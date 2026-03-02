Package: `effect`<br />
Module: `Array`<br />

## Array.intersection

Computes the intersection of two arrays using `Equal.equivalence()`. Order is
determined by the first array.

**Example** (Array intersection)

```ts
import { Array } from "effect"

console.log(Array.intersection([1, 2, 3], [3, 4, 1])) // [1, 3]
```

**See**

- `intersectionWith` — use custom equality
- `union` — elements in either array
- `difference` — elements only in the first array

**Signature**

```ts
declare const intersection: { <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Array<A & B>; <A, B>(self: Iterable<A>, that: Iterable<B>): Array<A & B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2835)

Since v2.0.0