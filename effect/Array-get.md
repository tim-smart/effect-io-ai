# get

This function provides a safe way to read a value at a particular index from a `ReadonlyArray`.

To import and use `get` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.get
undefined

**Signature**

```ts
export declare const get: {
  (index: number): <A>(self: ReadonlyArray<A>) => Option<A>
  <A>(self: ReadonlyArray<A>, index: number): Option<A>
}
```
