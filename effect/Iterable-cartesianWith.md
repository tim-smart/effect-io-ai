# cartesianWith

Zips this Iterable crosswise with the specified Iterable using the specified combiner.

To import and use `cartesianWith` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.cartesianWith
undefined

**Signature**

```ts
export declare const cartesianWith: {
  <A, B, C>(that: Iterable<B>, f: (a: A, b: B) => C): (self: Iterable<A>) => Iterable<C>
  <A, B, C>(self: Iterable<A>, that: Iterable<B>, f: (a: A, b: B) => C): Iterable<C>
}
```
