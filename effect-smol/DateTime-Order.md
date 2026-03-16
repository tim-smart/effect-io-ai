Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.Order

An `Order` for comparing and sorting `DateTime` values.

`DateTime` values are ordered by their epoch milliseconds, so earlier times
come before later times regardless of time zone.

**Example**

```ts
import { Array, DateTime } from "effect"

const dates = [
  DateTime.makeUnsafe("2024-03-01"),
  DateTime.makeUnsafe("2024-01-01"),
  DateTime.makeUnsafe("2024-02-01")
]

const sorted = Array.sort(dates, DateTime.Order)
// Results in chronological order: 2024-01-01, 2024-02-01, 2024-03-01
```

**Signature**

```ts
declare const Order: order.Order<DateTime>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L376)

Since v3.6.0