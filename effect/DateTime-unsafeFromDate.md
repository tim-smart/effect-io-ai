# unsafeFromDate

Create a `DateTime` from a `Date`.

If the `Date` is invalid, an `IllegalArgumentException` will be thrown.

To import and use `unsafeFromDate` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.unsafeFromDate
undefined

**Signature**

```ts
export declare const unsafeFromDate: (date: Date) => Utc
```
