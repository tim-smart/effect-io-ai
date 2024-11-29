# last

Get the last element in a `ReadonlyArray`, or `None` if the `ReadonlyArray` is empty.

To import and use `last` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.last
undefined

**Signature**

```ts
export declare const last: <A>(self: ReadonlyArray<A>) => Option<A>
```
