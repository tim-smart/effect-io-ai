# setParts

Set the different parts of a `DateTime` as an object.

The Date will be time zone adjusted.

To import and use `setParts` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.setParts
```

**Signature**

```ts
export declare const setParts: {
  (parts: Partial<DateTime.PartsWithWeekday>): <A extends DateTime>(self: A) => A
  <A extends DateTime>(self: A, parts: Partial<DateTime.PartsWithWeekday>): A
}
```
