# toPartsUtc

Get the different parts of a `DateTime` as an object.

The parts will be in UTC.

To import and use `toPartsUtc` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.toPartsUtc
undefined

**Signature**

```ts
export declare const toPartsUtc: (self: DateTime) => DateTime.PartsWithWeekday
```
