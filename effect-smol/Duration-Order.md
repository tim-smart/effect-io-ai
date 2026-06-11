Package: `effect`<br />
Module: `Duration`<br />

## Duration.Order

Provides an `Order` instance for comparing `Duration` values.

**Details**

`NegativeInfinity` < any finite value < `Infinity`.

**Example** (Sorting durations)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1131)

Since v2.0.0