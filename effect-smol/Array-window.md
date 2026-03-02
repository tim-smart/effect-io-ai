Package: `effect`<br />
Module: `Array`<br />

## Array.window

Creates overlapping sliding windows of size `n`.

- Returns an empty array if `n <= 0` or the array has fewer than `n` elements.
- Each window is a tuple of exactly `n` elements.

**Example** (Sliding windows)

```ts
import { Array } from "effect"

console.log(Array.window([1, 2, 3, 4, 5], 3)) // [[1, 2, 3], [2, 3, 4], [3, 4, 5]]
console.log(Array.window([1, 2, 3, 4, 5], 6)) // []
```

**See**

- `chunksOf` — non-overlapping chunks

**Signature**

```ts
declare const window: { <N extends number>(n: N): <A>(self: Iterable<A>) => Array<TupleOf<N, A>>; <A, N extends number>(self: Iterable<A>, n: N): Array<TupleOf<N, A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2565)

Since v3.13.2