Package: `effect`<br />
Module: `Array`<br />

## Array.matchLeft

Pattern-matches on an array from the left, providing the first element and
the remaining elements separately.

- `onNonEmpty` receives `(head, tail)` where `tail` is the rest of the array.
- Use when you want to process the first element differently from the rest.

**Example** (Head and tail destructuring)

```ts
import { Array } from "effect"

const matchLeft = Array.matchLeft({
  onEmpty: () => "empty",
  onNonEmpty: (head, tail) => `head: ${head}, tail: ${tail.length}`
})
console.log(matchLeft([])) // "empty"
console.log(matchLeft([1, 2, 3])) // "head: 1, tail: 2"
```

**See**

- `match` — receives the full non-empty array
- `matchRight` — destructures into init + last

**Signature**

```ts
declare const matchLeft: { <B, A, C = B>(options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (head: A, tail: Array<A>) => C; }): (self: ReadonlyArray<A>) => B | C; <A, B, C = B>(self: ReadonlyArray<A>, options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (head: A, tail: Array<A>) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L477)

Since v2.0.0