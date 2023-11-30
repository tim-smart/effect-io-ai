# prependAll

Prepends the specified prefix array (or iterable) to the beginning of the specified array (or iterable).
If either array is non-empty, the result is also a non-empty array.

To import and use `prependAll` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.prependAll
```

**Example**

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"

assert.deepStrictEqual(ReadonlyArray.prependAll([1, 2], ["a", "b"]), ["a", "b", 1, 2])
```

**Signature**

```ts
export declare const prependAll: {
  <S extends readonly any[] | Iterable<any>, T extends readonly any[] | Iterable<any>>(
    that: T
  ): (self: S) => ReadonlyArray.With2<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>
  <A, B>(self: Iterable<A>, that: readonly [B, ...B[]]): [A | B, ...(A | B)[]]
  <A, B>(self: readonly [A, ...A[]], that: Iterable<B>): [A | B, ...(A | B)[]]
  <A, B>(self: Iterable<A>, that: Iterable<B>): (A | B)[]
}
```
