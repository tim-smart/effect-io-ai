# matchRight

Matches the elements of an array from the right, applying functions to cases of empty and non-empty arrays.

To import and use `matchRight` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.matchRight
undefined

**Example**

```ts
import { Array } from "effect"

const matchRight = Array.matchRight({
  onEmpty: () => "empty",
  onNonEmpty: (init, last) => `init: ${init.length}, last: ${last}`
})
assert.deepStrictEqual(matchRight([]), "empty")
assert.deepStrictEqual(matchRight([1, 2, 3]), "init: 2, last: 3")
```

**Signature**

```ts
export declare const matchRight: {
  <B, A, C = B>(options: {
    readonly onEmpty: LazyArg<B>
    readonly onNonEmpty: (init: Array<A>, last: A) => C
  }): (self: ReadonlyArray<A>) => B | C
  <A, B, C = B>(
    self: ReadonlyArray<A>,
    options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (init: Array<A>, last: A) => C }
  ): B | C
}
```
