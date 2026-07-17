Package: `effect`<br />
Module: `Array`<br />

## Array.intersection

Computes the intersection of two arrays using `Equal.equivalence()`. Order is
determined by the first array.

**When to use**

Use when Effect equality is the right membership test and you want to keep
values present in both inputs while preserving the first input's order.

**Example** (Computing array intersections)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3233)

Since v2.0.0