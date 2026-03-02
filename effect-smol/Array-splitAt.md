Package: `effect`<br />
Module: `Array`<br />

## Array.splitAt

Splits an iterable into two arrays at the given index.

- `n` can be `0` (all elements in the second array).
- `n` is floored to an integer.

**Example** (Splitting at an index)

```ts
import { Array } from "effect"

console.log(Array.splitAt([1, 2, 3, 4, 5], 3)) // [[1, 2, 3], [4, 5]]
```

**See**

- `splitAtNonEmpty` — for non-empty arrays
- `splitWhere` — split at a predicate boundary

**Signature**

```ts
declare const splitAt: { (n: number): <A>(self: Iterable<A>) => [beforeIndex: Array<A>, fromIndex: Array<A>]; <A>(self: Iterable<A>, n: number): [beforeIndex: Array<A>, fromIndex: Array<A>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2343)

Since v2.0.0