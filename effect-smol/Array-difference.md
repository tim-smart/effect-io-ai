Package: `effect`<br />
Module: `Array`<br />

## Array.difference

Computes elements in the first array that are not in the second, using
`Equal.equivalence()`.

**When to use**

Use when you need to keep values from the first array that are absent from
the second and the default `Equal.equivalence()` comparison is appropriate.

**Example** (Computing array differences)

```ts
import { Array } from "effect"

console.log(Array.difference([1, 2, 3], [2, 3, 4])) // [1]
```

**See**

- `differenceWith` — use custom equality
- `union` — elements in either array
- `intersection` — elements in both arrays

**Signature**

```ts
declare const difference: { <A>(that: Iterable<A>): (self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, that: Iterable<A>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3301)

Since v2.0.0