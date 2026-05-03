Package: `effect`<br />
Module: `Duration`<br />

## Duration.Order

Order instance for `Duration`, allowing comparison operations.

`NegativeInfinity` < any finite value < `Infinity`.

**Example**

```ts
import { Duration } from "effect"

const durations = [
  Duration.seconds(3),
  Duration.seconds(1),
  Duration.seconds(2)
]
const sorted = durations.sort((a, b) => Duration.Order(a, b))
console.log(sorted.map(Duration.toSeconds)) // [1, 2, 3]
```

**Signature**

```ts
declare const Order: order.Order<Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1036)

Since v2.0.0