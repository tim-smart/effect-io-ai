# chunksOf

Splits an `Iterable` into length-`n` pieces. The last piece will be shorter if `n` does not evenly divide the length of
the `Iterable`.

To import and use `chunksOf` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.chunksOf
undefined

**Signature**

```ts
export declare const chunksOf: {
  (n: number): <A>(self: Iterable<A>) => Iterable<Array<A>>
  <A>(self: Iterable<A>, n: number): Iterable<Array<A>>
}
```
