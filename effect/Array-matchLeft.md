# matchLeft

Matches the elements of an array from the left, applying functions to cases of empty and non-empty arrays.

To import and use `matchLeft` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.matchLeft
```

**Example**

```ts
import { Array } from "effect"

const matchLeft = Array.matchLeft({
  onEmpty: () => "empty",
  onNonEmpty: (head, tail) => `head: ${head}, tail: ${tail.length}`
})
assert.deepStrictEqual(matchLeft([]), "empty")
assert.deepStrictEqual(matchLeft([1, 2, 3]), "head: 1, tail: 2")
```

**Signature**

```ts
export declare const matchLeft: {
  <B, A, C = B>(options: {
    readonly onEmpty: LazyArg<B>
    readonly onNonEmpty: (head: A, tail: A[]) => C
  }): (self: readonly A[]) => B | C
  <A, B, C = B>(
    self: readonly A[],
    options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (head: A, tail: A[]) => C }
  ): B | C
}
```
