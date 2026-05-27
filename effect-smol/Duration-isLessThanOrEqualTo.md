Package: `effect`<br />
Module: `Duration`<br />

## Duration.isLessThanOrEqualTo

Checks if the first Duration is less than or equal to the second.

**Example** (Comparing durations with less than or equal)

```ts
import { Duration } from "effect"

const isLessOrEqual = Duration.isLessThanOrEqualTo(
  Duration.seconds(5),
  Duration.seconds(5)
)
console.log(isLessOrEqual) // true
```

**Signature**

```ts
declare const isLessThanOrEqualTo: { (that: Duration): (self: Duration) => boolean; (self: Duration, that: Duration): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1573)

Since v4.0.0