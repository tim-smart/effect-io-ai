Package: `effect`<br />
Module: `Duration`<br />

## Duration.divide

Divides a `Duration` by a finite, non-zero number safely.

**Details**

Returns `Option.none()` for zero, negative zero, or non-finite divisors. For
nanosecond-backed durations, also returns `Option.none()` when the divisor
cannot be converted to a `bigint`, such as a fractional divisor.

**Example** (Safely dividing durations)

```ts
import { Duration, Option } from "effect"

const d = Duration.divide(Duration.seconds(10), 2)
console.log(Option.map(d, Duration.toSeconds)) // Some(5)

Duration.divide(Duration.seconds(10), 0) // None
```

**Signature**

```ts
declare const divide: { (by: number): (self: Duration) => Option.Option<Duration>; (self: Duration, by: number): Option.Option<Duration>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1306)

Since v2.4.19