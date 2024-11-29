# toParts

Get the different parts of a `DateTime` as an object.

The parts will be time zone adjusted.

To import and use `toParts` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.toParts
undefined

**Signature**

```ts
export declare const toParts: (self: DateTime) => DateTime.PartsWithWeekday
```
