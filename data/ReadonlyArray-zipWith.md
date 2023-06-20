# zipWith

Apply a function to pairs of elements at the same index in two `Iterable`s, collecting the results in a new `Array`. If one
input `Iterable` is short, excess elements of the longer `Iterable` are discarded.

To import and use `zipWith` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.zipWith
```

**Signature**

```ts
export declare const zipWith: {
  <B, A, C>(that: Iterable<B>, f: (a: A, b: B) => C): (self: Iterable<A>) => C[]
  <B, A, C>(self: Iterable<A>, that: Iterable<B>, f: (a: A, b: B) => C): C[]
}
```
