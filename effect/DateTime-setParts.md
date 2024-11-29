# setParts

Set the different parts of a `DateTime` as an object.

The Date will be time zone adjusted.

To import and use `setParts` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.setParts
undefined

**Signature**

```ts
export declare const setParts: {
  (parts: Partial<DateTime.PartsWithWeekday>): <A extends DateTime>(self: A) => DateTime.PreserveZone<A>
  <A extends DateTime>(self: A, parts: Partial<DateTime.PartsWithWeekday>): DateTime.PreserveZone<A>
}
```
