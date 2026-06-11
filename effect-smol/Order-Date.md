Package: `effect`<br />
Module: `Order`<br />

## Order.Date

Order instance for `Date` objects that compares them chronologically by their timestamp.

**When to use**

Use when you need chronological ordering for JavaScript date values.

**Details**

Compares dates by their underlying timestamp in milliseconds since the epoch.
Earlier dates are less than later dates. Invalid dates are compared through
their `getTime()` result.

**Example** (Date Ordering)

```ts
import { Order } from "effect"

const date1 = new Date("2023-01-01")
const date2 = new Date("2023-01-02")

console.log(Order.Date(date1, date2)) // -1
console.log(Order.Date(date2, date1)) // 1
console.log(Order.Date(date1, date1)) // 0
```

**See**

- `mapInput` to compare objects by a date property

**Signature**

```ts
declare const Date: Order<Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L482)

Since v2.0.0