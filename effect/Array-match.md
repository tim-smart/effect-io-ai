# match

Matches the elements of an array, applying functions to cases of empty and non-empty arrays.

To import and use `match` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.match
undefined

**Example**

```ts
import { Array } from "effect"

const match = Array.match({
  onEmpty: () => "empty",
  onNonEmpty: ([head, ...tail]) => `head: ${head}, tail: ${tail.length}`
})
assert.deepStrictEqual(match([]), "empty")
assert.deepStrictEqual(match([1, 2, 3]), "head: 1, tail: 2")
```

**Signature**

```ts
export declare const match: {
  <B, A, C = B>(options: {
    readonly onEmpty: LazyArg<B>
    readonly onNonEmpty: (self: NonEmptyReadonlyArray<A>) => C
  }): (self: ReadonlyArray<A>) => B | C
  <A, B, C = B>(
    self: ReadonlyArray<A>,
    options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (self: NonEmptyReadonlyArray<A>) => C }
  ): B | C
}
```
