# getPart

Get a part of a `DateTime` as a number.

The part will be time zone adjusted.

To import and use `getPart` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.getPart
undefined

**Example**

```ts
import { DateTime } from "effect"

const now = DateTime.unsafeMakeZoned({ year: 2024 }, { timeZone: "Europe/London" })
const year = DateTime.getPart(now, "year")
assert.strictEqual(year, 2024)
```

**Signature**

```ts
export declare const getPart: {
  (part: keyof DateTime.PartsWithWeekday): (self: DateTime) => number
  (self: DateTime, part: keyof DateTime.PartsWithWeekday): number
}
```
