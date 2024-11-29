# dedupe

Remove duplicates from an `Iterable`, preserving the order of the first occurrence of each element.
The equivalence used to compare elements is provided by `Equal.equivalence()` from the `Equal` module.

To import and use `dedupe` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.dedupe
undefined

**Signature**

```ts
export declare const dedupe: <S extends Iterable<any> | NonEmptyReadonlyArray<any>>(
  self: S
) => S extends NonEmptyReadonlyArray<infer A> ? NonEmptyArray<A> : S extends Iterable<infer A> ? Array<A> : never
```
