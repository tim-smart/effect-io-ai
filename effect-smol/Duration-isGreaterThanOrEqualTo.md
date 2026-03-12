Package: `effect`<br />
Module: `Duration`<br />

## Duration.isGreaterThanOrEqualTo

Checks if the first Duration is greater than or equal to the second.

**Example**

```ts
import { Duration } from "effect"

const isGreaterOrEqual = Duration.isGreaterThanOrEqualTo(
  Duration.seconds(5),
  Duration.seconds(5)
)
console.log(isGreaterOrEqual) // true
```

**Signature**

```ts
declare const isGreaterThanOrEqualTo: { (that: Duration): (self: Duration) => boolean; (self: Duration, that: Duration): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1417)

Since v2.0.0