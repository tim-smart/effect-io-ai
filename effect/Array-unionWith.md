# unionWith

Calculates the union of two arrays using the provided equivalence relation.

To import and use `unionWith` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.unionWith
```

**Example**

```ts
import { Array } from "effect"

const array1 = [1, 2]
const array2 = [2, 3]
const union = Array.unionWith(array1, array2, (a, b) => a === b)
assert.deepStrictEqual(union, [1, 2, 3])
```

**Signature**

```ts
export declare const unionWith: {
  <S extends readonly any[] | Iterable<any>, T extends readonly any[] | Iterable<any>>(
    that: T,
    isEquivalent: (self: ReadonlyArray.Infer<S>, that: ReadonlyArray.Infer<T>) => boolean
  ): (self: S) => ReadonlyArray.OrNonEmpty<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>
  <A, B>(
    self: readonly [A, ...A[]],
    that: Iterable<B>,
    isEquivalent: (self: A, that: B) => boolean
  ): [A | B, ...(A | B)[]]
  <A, B>(
    self: Iterable<A>,
    that: readonly [B, ...B[]],
    isEquivalent: (self: A, that: B) => boolean
  ): [A | B, ...(A | B)[]]
  <A, B>(self: Iterable<A>, that: Iterable<B>, isEquivalent: (self: A, that: B) => boolean): (A | B)[]
}
```
