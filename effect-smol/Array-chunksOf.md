Package: `effect`<br />
Module: `Array`<br />

## Array.chunksOf

Splits an iterable into chunks of length `n`. The last chunk may be shorter
if `n` does not evenly divide the length.

**When to use**

Use to divide an iterable into a new array of non-overlapping chunks with a
maximum chunk size.

**Details**

`chunksOf(n)([])` is `[]`, not `[[]]`. Each chunk is a `NonEmptyArray`, and
the outer return type preserves `NonEmptyArray`.

**Example** (Chunking an array)

```ts
import { Array } from "effect"

console.log(Array.chunksOf([1, 2, 3, 4, 5], 2)) // [[1, 2], [3, 4], [5]]
```

**See**

- `split` — split into a given number of groups
- `window` — sliding windows

**Signature**

```ts
declare const chunksOf: { (n: number): <S extends Iterable<any>>(self: S) => ReadonlyArray.With<S, NonEmptyArray<ReadonlyArray.Infer<S>>>; <A>(self: NonEmptyReadonlyArray<A>, n: number): NonEmptyArray<NonEmptyArray<A>>; <A>(self: Iterable<A>, n: number): Array<NonEmptyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2962)

Since v2.0.0