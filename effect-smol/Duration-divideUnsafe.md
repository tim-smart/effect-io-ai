Package: `effect`<br />
Module: `Duration`<br />

## Duration.divideUnsafe

Divides a `Duration` by a number using fallback rules instead of returning
an `Option`.

**When to use**

Use when dividing a `Duration` should return `Duration.zero` or signed
infinity for invalid cases instead of forcing callers to handle `Option.none`.

**Details**

Non-finite divisors return `Duration.zero`. Division by positive or negative
zero can produce signed infinity for non-zero finite durations, while zero
or infinite durations divided by zero produce `Duration.zero`.
Nanosecond-backed durations return `Duration.zero` when the divisor cannot
be converted to a `bigint`.

**Example** (Dividing durations unsafely)

```ts
import { Duration } from "effect"

const half = Duration.divideUnsafe(Duration.seconds(10), 2)
console.log(Duration.toSeconds(half)) // 5

const infinite = Duration.divideUnsafe(Duration.seconds(10), 0)
console.log(Duration.toMillis(infinite)) // Infinity
```

**Signature**

```ts
declare const divideUnsafe: { (by: number): (self: Duration) => Duration; (self: Duration, by: number): Duration; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1361)

Since v4.0.0