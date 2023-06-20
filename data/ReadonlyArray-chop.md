# chop

A useful recursion pattern for processing an `Iterable` to produce a new `Array`, often used for "chopping" up the input
`Iterable`. Typically chop is called with some function that will consume an initial prefix of the `Iterable` and produce a
value and the rest of the `Array`.

To import and use `chop` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.chop
```

**Signature**

```ts
export declare const chop: {
  <A, B>(f: (as: readonly [A, ...A[]]) => readonly [B, readonly A[]]): (self: Iterable<A>) => B[]
  <A, B>(self: Iterable<A>, f: (as: readonly [A, ...A[]]) => readonly [B, readonly A[]]): B[]
}
```
