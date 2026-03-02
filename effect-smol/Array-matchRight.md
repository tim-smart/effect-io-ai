Package: `effect`<br />
Module: `Array`<br />

## Array.matchRight

Pattern-matches on an array from the right, providing all elements except the
last and the last element separately.

- `onNonEmpty` receives `(init, last)` where `init` is everything but the last element.
- Use when you want to process the last element differently from the rest.

**Example** (Init and last destructuring)

```ts
import { Array } from "effect"

const matchRight = Array.matchRight({
  onEmpty: () => "empty",
  onNonEmpty: (init, last) => `init: ${init.length}, last: ${last}`
})
console.log(matchRight([])) // "empty"
console.log(matchRight([1, 2, 3])) // "init: 2, last: 3"
```

**See**

- `match` — receives the full non-empty array
- `matchLeft` — destructures into head + tail

**Signature**

```ts
declare const matchRight: { <B, A, C = B>(options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (init: Array<A>, last: A) => C; }): (self: ReadonlyArray<A>) => B | C; <A, B, C = B>(self: ReadonlyArray<A>, options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (init: Array<A>, last: A) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L526)

Since v2.0.0