Package: `effect`<br />
Module: `Array`<br />

## Array.match

Pattern-matches on an array, handling empty and non-empty cases separately.

- Use when you need to branch on whether an array has elements.
- `onNonEmpty` receives a `NonEmptyReadonlyArray`.
- Dual: data-first or data-last.

**Example** (Branching on emptiness)

```ts
import { Array } from "effect"

const describe = Array.match({
  onEmpty: () => "empty",
  onNonEmpty: ([head, ...tail]) => `head: ${head}, tail: ${tail.length}`
})
console.log(describe([])) // "empty"
console.log(describe([1, 2, 3])) // "head: 1, tail: 2"
```

**See**

- `matchLeft` — destructures into head + tail
- `matchRight` — destructures into init + last

**Signature**

```ts
declare const match: { <B, A, C = B>(options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (self: NonEmptyReadonlyArray<A>) => C; }): (self: ReadonlyArray<A>) => B | C; <A, B, C = B>(self: ReadonlyArray<A>, options: { readonly onEmpty: LazyArg<B>; readonly onNonEmpty: (self: NonEmptyReadonlyArray<A>) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L430)

Since v2.0.0