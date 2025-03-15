Package: `effect`<br />
Module: `Array`<br />

## Array.matchRight

Matches the elements of an array from the right, applying functions to cases of empty and non-empty arrays.

**Example**

```ts
import { Array } from "effect"

const matchRight = Array.matchRight({
  onEmpty: () => "empty",
  onNonEmpty: (init, last) => `init: ${init.length}, last: ${last}`
})
console.log(matchRight([])) // "empty"
console.log(matchRight([1, 2, 3])) // "init: 2, last: 3"
```

**Signature**

```ts
declare const matchRight: { <B, A, C = B>(options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (init: Array<A>, last: A) => C; }): (self: ReadonlyArray<A>) => B | C; <A, B, C = B>(self: ReadonlyArray<A>, options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (init: Array<A>, last: A) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L321)

Since v2.0.0