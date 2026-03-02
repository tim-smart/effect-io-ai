Package: `effect`<br />
Module: `Order`<br />

## Order.Date

An `Order` instance for `Date` objects that compares them chronologically by their timestamp.

When to use this:
- When comparing dates for sorting or searching
- As a base for creating orders on types containing dates
- When implementing time-based comparisons

Behavior:
- Pure function: does not mutate inputs
- Compares dates by their underlying timestamp (milliseconds since epoch)
- Earlier dates are less than later dates
- Invalid dates are compared as if they were valid (uses `getTime()` result)

**Example** (Date Ordering)

```ts
import { Order } from "effect"

const date1 = new Date("2023-01-01")
const date2 = new Date("2023-01-02")

console.log(Order.Date(date1, date2)) // -1
console.log(Order.Date(date2, date1)) // 1
console.log(Order.Date(date1, date1)) // 0
```

See also:
- `mapInput` - Use this order to compare objects by a date property

**Signature**

```ts
declare const Date: Order<Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L558)

Since v2.0.0