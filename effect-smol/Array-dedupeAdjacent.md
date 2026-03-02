Package: `effect`<br />
Module: `Array`<br />

## Array.dedupeAdjacent

Removes consecutive duplicate elements using `Equal.equivalence()`.

**Example** (Removing adjacent duplicates)

```ts
import { Array } from "effect"

console.log(Array.dedupeAdjacent([1, 1, 2, 2, 3, 3])) // [1, 2, 3]
```

**See**

- `dedupeAdjacentWith` — use custom equality
- `dedupe` — remove all duplicates

**Signature**

```ts
declare const dedupeAdjacent: <A>(self: Iterable<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3947)

Since v2.0.0