# prependAll

Prepends the specified prefix array (or iterable) to the beginning of the specified array (or iterable).
If either array is non-empty, the result is also a non-empty array.

To import and use `prependAll` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.prependAll
```

**Example**

```ts
import * as Array from "effect/Array"

assert.deepStrictEqual(Array.prependAll([1, 2], ["a", "b"]), ["a", "b", 1, 2])
```

**Signature**

```ts
export declare const prependAll: {
  <S extends readonly any[] | Iterable<any>, T extends readonly any[] | Iterable<any>>(
    that: T
  ): (self: S) => ReadonlyArray.OrNonEmpty<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>
  <A, B>(self: Iterable<A>, that: readonly [B, ...B[]]): [A | B, ...(A | B)[]]
  <A, B>(self: readonly [A, ...A[]], that: Iterable<B>): [A | B, ...(A | B)[]]
  <A, B>(self: Iterable<A>, that: Iterable<B>): (A | B)[]
}
```
