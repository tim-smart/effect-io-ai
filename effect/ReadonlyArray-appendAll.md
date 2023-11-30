# appendAll

Concatenates two arrays (or iterables), combining their elements.
If either array is non-empty, the result is also a non-empty array.

To import and use `appendAll` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.appendAll
```

**Signature**

```ts
export declare const appendAll: {
  <S extends readonly any[] | Iterable<any>, T extends readonly any[] | Iterable<any>>(
    that: T
  ): (self: S) => ReadonlyArray.With2<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>
  <A, B>(self: Iterable<A>, that: readonly [B, ...B[]]): [A | B, ...(A | B)[]]
  <A, B>(self: readonly [A, ...A[]], that: Iterable<B>): [A | B, ...(A | B)[]]
  <A, B>(self: Iterable<A>, that: Iterable<B>): (A | B)[]
}
```
