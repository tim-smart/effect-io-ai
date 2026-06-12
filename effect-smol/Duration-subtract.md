Package: `effect`<br />
Module: `Duration`<br />

## Duration.subtract

Subtracts one Duration from another. The result can be negative.

**Details**

Infinity subtraction follows signed-infinity arithmetic. Subtracting the
same infinity from itself returns zero. Positive infinity minus negative
infinity or any finite duration remains positive infinity. Negative infinity
minus positive infinity or any finite duration remains negative infinity.
Finite durations minus positive infinity produce negative infinity, and
finite durations minus negative infinity produce positive infinity.

**Example** (Subtracting durations)

```ts
import { Duration } from "effect"

const result = Duration.subtract(Duration.seconds(10), Duration.seconds(3))
console.log(Duration.toSeconds(result)) // 7
```

**Signature**

```ts
declare const subtract: { (that: Duration): (self: Duration) => Duration; (self: Duration, that: Duration): Duration; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1450)

Since v2.0.0