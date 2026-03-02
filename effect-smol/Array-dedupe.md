Package: `effect`<br />
Module: `Array`<br />

## Array.dedupe

Removes duplicates using `Equal.equivalence()`, preserving the order of the
first occurrence.

**Example** (Removing duplicates)

```ts
import { Array } from "effect"

console.log(Array.dedupe([1, 2, 1, 3, 2, 4])) // [1, 2, 3, 4]
```

**See**

- `dedupeWith` — use custom equality
- `dedupeAdjacent` — only dedupes consecutive elements

**Signature**

```ts
declare const dedupe: <S extends Iterable<any>>(self: S) => S extends NonEmptyReadonlyArray<infer A> ? NonEmptyArray<A> : S extends Iterable<infer A> ? Array<A> : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3891)

Since v2.0.0