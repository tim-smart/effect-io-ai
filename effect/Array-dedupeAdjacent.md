## dedupeAdjacent

Deduplicates adjacent elements that are identical.

**Example**

```ts
import { Array } from "effect"

const result = Array.dedupeAdjacent([1, 1, 2, 2, 3, 3])
console.log(result) // [1, 2, 3]
```

**Signature**

```ts
declare const dedupeAdjacent: <A>(self: Iterable<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3082)

Since v2.0.0