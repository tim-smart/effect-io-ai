# chop

A useful recursion pattern for processing an `Iterable` to produce a new `Array`, often used for "chopping" up the input
`Iterable`. Typically chop is called with some function that will consume an initial prefix of the `Iterable` and produce a
value and the rest of the `Array`.

To import and use `chop` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.chop
```

**Signature**

```ts
export declare const chop: {
  <S extends readonly any[] | Iterable<any>, B>(
    f: (
      as: readonly [ReadonlyArray.Infer<S>, ...ReadonlyArray.Infer<S>[]]
    ) => readonly [B, readonly ReadonlyArray.Infer<S>[]]
  ): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>
  <A, B>(self: readonly [A, ...A[]], f: (as: readonly [A, ...A[]]) => readonly [B, readonly A[]]): [B, ...B[]]
  <A, B>(self: Iterable<A>, f: (as: readonly [A, ...A[]]) => readonly [B, readonly A[]]): B[]
}
```
