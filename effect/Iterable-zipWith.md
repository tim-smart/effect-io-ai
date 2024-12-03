# zipWith

Apply a function to pairs of elements at the same index in two `Iterable`s, collecting the results. If one
input `Iterable` is short, excess elements of the longer `Iterable` are discarded.

To import and use `zipWith` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.zipWith
```

**Signature**

```ts
export declare const zipWith: {
  <B, A, C>(that: Iterable<B>, f: (a: A, b: B) => C): (self: Iterable<A>) => Iterable<C>
  <A, B, C>(self: Iterable<A>, that: Iterable<B>, f: (a: A, b: B) => C): Iterable<C>
}
```
