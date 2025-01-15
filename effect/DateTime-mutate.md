# mutate

Modify a `DateTime` by applying a function to a cloned `Date` instance.

The `Date` will first have the time zone applied if possible, and then be
converted back to a `DateTime` within the same time zone.

To import and use `mutate` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.mutate
```

**Signature**

```ts
export declare const mutate: {
  (f: (date: Date) => void): <A extends DateTime>(self: A) => A
  <A extends DateTime>(self: A, f: (date: Date) => void): A
}
```
