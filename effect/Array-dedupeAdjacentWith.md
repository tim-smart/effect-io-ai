Package: `effect`<br />
Module: `Array`<br />

## Array.dedupeAdjacentWith

Removes consecutive duplicate elements using a custom equivalence.

**When to use**

Use when consecutive duplicates should be collapsed using a custom
equivalence, while equivalent values that appear later should remain in the
result.

**Details**

Non-adjacent duplicates are preserved.

**Example** (Deduplicating adjacent elements)

```ts
import { Array } from "effect"

console.log(Array.dedupeAdjacentWith([1, 1, 2, 2, 3, 3], (a, b) => a === b))
// [1, 2, 3]
```

**See**

- `dedupeAdjacent` — uses default equality
- `dedupeWith` — dedupes all duplicates, not just adjacent

**Signature**

```ts
declare const dedupeAdjacentWith: { <A>(isEquivalent: (self: A, that: A) => boolean): (self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L4472)

Since v2.0.0