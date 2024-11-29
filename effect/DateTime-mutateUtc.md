# mutateUtc

Modify a `DateTime` by applying a function to a cloned UTC `Date` instance.

To import and use `mutateUtc` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.mutateUtc
undefined

**Signature**

```ts
export declare const mutateUtc: {
  (f: (date: Date) => void): <A extends DateTime>(self: A) => DateTime.PreserveZone<A>
  <A extends DateTime>(self: A, f: (date: Date) => void): DateTime.PreserveZone<A>
}
```
