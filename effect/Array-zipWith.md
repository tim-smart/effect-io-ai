# zipWith

Apply a function to pairs of elements at the same index in two `Iterable`s, collecting the results in a new `Array`. If one
input `Iterable` is short, excess elements of the longer `Iterable` are discarded.

To import and use `zipWith` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.zipWith
```

**Signature**

```ts
export declare const zipWith: {
  <B, A, C>(that: readonly [B, ...B[]], f: (a: A, b: B) => C): (self: readonly [A, ...A[]]) => [C, ...C[]]
  <B, A, C>(that: Iterable<B>, f: (a: A, b: B) => C): (self: Iterable<A>) => C[]
  <A, B, C>(self: readonly [A, ...A[]], that: readonly [B, ...B[]], f: (a: A, b: B) => C): [C, ...C[]]
  <B, A, C>(self: Iterable<A>, that: Iterable<B>, f: (a: A, b: B) => C): C[]
}
```
