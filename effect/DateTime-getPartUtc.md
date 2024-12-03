# getPartUtc

Get a part of a `DateTime` as a number.

The part will be in the UTC time zone.

To import and use `getPartUtc` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.getPartUtc
```

**Example**

```ts
import { DateTime } from "effect"

const now = DateTime.unsafeMake({ year: 2024 })
const year = DateTime.getPartUtc(now, "year")
assert.strictEqual(year, 2024)
```

**Signature**

```ts
export declare const getPartUtc: {
  (part: keyof DateTime.PartsWithWeekday): (self: DateTime) => number
  (self: DateTime, part: keyof DateTime.PartsWithWeekday): number
}
```
