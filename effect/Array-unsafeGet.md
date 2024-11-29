# unsafeGet

Gets an element unsafely, will throw on out of bounds.

To import and use `unsafeGet` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.unsafeGet
undefined

**Signature**

```ts
export declare const unsafeGet: {
  (index: number): <A>(self: ReadonlyArray<A>) => A
  <A>(self: ReadonlyArray<A>, index: number): A
}
```
