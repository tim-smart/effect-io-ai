Package: `effect`<br />
Module: `Array`<br />

## Array.match

Matches the elements of an array, applying functions to cases of empty and non-empty arrays.

**Example**

```ts
import { Array } from "effect"

const match = Array.match({
  onEmpty: () => "empty",
  onNonEmpty: ([head, ...tail]) => `head: ${head}, tail: ${tail.length}`
})
console.log(match([])) // "empty"
console.log(match([1, 2, 3])) // "head: 1, tail: 2"
```

**Signature**

```ts
declare const match: { <B, A, C = B>(options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (self: NonEmptyReadonlyArray<A>) => C; }): (self: ReadonlyArray<A>) => B | C; <A, B, C = B>(self: ReadonlyArray<A>, options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (self: NonEmptyReadonlyArray<A>) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L242)

Since v2.0.0