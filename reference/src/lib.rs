const MULTIPLIER: i64 = 0x5deece66d;
const INCREMENT: i64 = 0xb;
const MODULUS_BITS: i64 = 48;
const MODULUS_MASK: i64 = (1 << MODULUS_BITS) - 1;
const NEXT_BITS: i64 = 32;
const NEXT_MASK: i64 = (1 << NEXT_BITS) - 1;
const MULTIPLIER_INVERSE: i64 = 0xdfe05bcb1365;
const LOST_BITS: i64 = MODULUS_BITS - NEXT_BITS;
const LOST_MAX: i64 = (1 << LOST_BITS) - 1;
const STEP: i64 = 1004285185;
const MAX_STEPS: i64 = 6;

pub fn get_millis(next_long: i64) -> i64 {
    let next_47_16 = (next_long & NEXT_MASK) as i32;
    let seed_47_16 = (((next_long as u64) >> NEXT_BITS) as i32).wrapping_add(if next_47_16 <= -1 {
        1
    } else {
        0
    });

    let known = (((next_47_16 as i64).wrapping_sub((seed_47_16 as i64).wrapping_mul(MULTIPLIER))
        << LOST_BITS)
        .wrapping_sub(INCREMENT))
        & MODULUS_MASK;

    let dividend = (MULTIPLIER | (MODULUS_MASK + 1)) - known;

    let quotient = dividend
        - ((((((dividend as u64) >> 32) + 1) as f64)
            * (((1u64 << 32) as f64) / (MULTIPLIER as f64))) as i64)
            * MULTIPLIER;
    debug_assert!(0 <= quotient && quotient <= LOST_MAX + STEP * MAX_STEPS);

    let mut next_15_0 = quotient;
    for _ in 0..MAX_STEPS {
        if next_15_0 <= LOST_MAX {
            break;
        }
        next_15_0 -= STEP;
    }
    debug_assert!(0 <= next_15_0 && next_15_0 <= LOST_MAX);

    let seed_15_0 = known
        .wrapping_add(next_15_0)
        .wrapping_mul(MULTIPLIER_INVERSE)
        & NEXT_MASK;
    debug_assert!(0 <= seed_15_0 && seed_15_0 <= LOST_MAX);

    (((seed_47_16 as i64) << LOST_BITS)
        .wrapping_add(seed_15_0)
        .wrapping_sub(INCREMENT)
        .wrapping_mul(MULTIPLIER_INVERSE)
        ^ MULTIPLIER)
        & MODULUS_MASK
}

#[test]
fn test_get_millis() {
    struct Random {
        seed: i64,
    }

    impl Random {
        pub fn new(seed: i64) -> Self {
            Self {
                seed: (seed ^ (MULTIPLIER)) & MODULUS_MASK,
            }
        }

        pub fn next(&mut self, bits: i64) -> i32 {
            let next_seed =
                (self.seed.wrapping_mul(MULTIPLIER).wrapping_add(INCREMENT)) & MODULUS_MASK;
            self.seed = next_seed;
            (next_seed >> (MODULUS_BITS - bits)) as i32
        }

        pub fn next_long(&mut self) -> i64 {
            let first = self.next(NEXT_BITS);
            let second = self.next(NEXT_BITS);
            ((first as i64) << NEXT_BITS).wrapping_add(second as i64)
        }
    }

    for _ in 0usize..(1 << 33) {
        let expected_seed = rand::random::<i64>();
        let actual_seed = get_millis(Random::new(expected_seed).next_long());
        assert_eq!(expected_seed & MODULUS_MASK, actual_seed);
    }
}
