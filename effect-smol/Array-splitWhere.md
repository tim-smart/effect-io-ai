Package: `effect`<br />
Module: `Array`<br />

## Array.splitWhere

Splits an iterable at the first element matching the predicate. The matching
element is included in the second array.

**Example** (Splitting at a condition)

```ts
import { Array } from "effect"

console.log(Array.splitWhere([1, 2, 3, 4, 5], (n) => n > 3)) // [[1, 2, 3], [4, 5]]
```

**See**

- `span` — splits at the first element that fails the predicate
- `splitAt` — split at a fixed index

**Signature**

```ts
declare const splitWhere: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => [beforeMatch: Array<A>, fromMatch: Array<A>]; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [beforeMatch: Array<A>, fromMatch: Array<A>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2430)

Since v2.0.0