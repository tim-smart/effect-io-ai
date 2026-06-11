Package: `effect`<br />
Module: `Duration`<br />

## Duration.times

Returns a `Duration` multiplied by a number.

**Details**

For nanosecond-backed durations, the multiplier must be convertible to a
`bigint`; fractional or non-finite multipliers can throw. Infinite
durations return positive infinity, negative infinity, or zero depending on
the multiplier sign.

**Example** (Multiplying durations)

```ts
import { Duration } from "effect"

const doubled = Duration.times(Duration.seconds(5), 2)
console.log(Duration.toSeconds(doubled)) // 10
```

**Signature**

```ts
declare const times: { (times: number): (self: Duration) => Duration; (self: Duration, times: number): Duration; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1402)

Since v2.0.0