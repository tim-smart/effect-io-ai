## matchLeft

Matches the elements of an array from the left, applying functions to cases of empty and non-empty arrays.

**Example**

```ts
import { Array } from "effect"

const matchLeft = Array.matchLeft({
  onEmpty: () => "empty",
  onNonEmpty: (head, tail) => `head: ${head}, tail: ${tail.length}`
})
console.log(matchLeft([])) // "empty"
console.log(matchLeft([1, 2, 3])) // "head: 1, tail: 2"
```

**Signature**

```ts
declare const matchLeft: { <B, A, C = B>(options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (head: A, tail: Array<A>) => C; }): (self: ReadonlyArray<A>) => B | C; <A, B, C = B>(self: ReadonlyArray<A>, options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (head: A, tail: Array<A>) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L283)

Since v2.0.0