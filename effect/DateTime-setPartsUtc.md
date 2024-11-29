# setPartsUtc

Set the different parts of a `DateTime` as an object.

To import and use `setPartsUtc` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.setPartsUtc
undefined

**Signature**

```ts
export declare const setPartsUtc: {
  (parts: Partial<DateTime.PartsWithWeekday>): <A extends DateTime>(self: A) => DateTime.PreserveZone<A>
  <A extends DateTime>(self: A, parts: Partial<DateTime.PartsWithWeekday>): DateTime.PreserveZone<A>
}
```
