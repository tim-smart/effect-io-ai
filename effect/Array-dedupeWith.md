# dedupeWith

Remove duplicates from an `Iterable` using the provided `isEquivalent` function,
preserving the order of the first occurrence of each element.

To import and use `dedupeWith` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.dedupeWith
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 2, 3, 3, 3]
const unique = Array.dedupeWith(numbers, (a, b) => a === b)
assert.deepStrictEqual(unique, [1, 2, 3])
```

**Signature**

```ts
export declare const dedupeWith: {
  <S extends Iterable<any>>(
    isEquivalent: (self: ReadonlyArray.Infer<S>, that: ReadonlyArray.Infer<S>) => boolean
  ): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>
  <A>(self: NonEmptyReadonlyArray<A>, isEquivalent: (self: A, that: A) => boolean): NonEmptyArray<A>
  <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): Array<A>
}
```
