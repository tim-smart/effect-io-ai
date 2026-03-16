Package: `effect`<br />
Module: `Array`<br />

## Array.cartesian

Computes the cartesian product of two arrays, returning all pairs as tuples.

- Produces every `[a, b]` combination of an element from `self` with an element from `that`.
- Result length is `self.length * that.length`.

**Example** (All pairs of two arrays)

```ts
import { Array } from "effect"

const result = Array.cartesian([1, 2], ["a", "b"])
console.log(result) // [[1, "a"], [1, "b"], [2, "a"], [2, "b"]]
```

**See**

- `cartesianWith` — apply a combiner to each pair

**Signature**

```ts
declare const cartesian: { <B>(that: ReadonlyArray<B>): <A>(self: ReadonlyArray<A>) => Array<[A, B]>; <A, B>(self: ReadonlyArray<A>, that: ReadonlyArray<B>): Array<[A, B]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L4076)

Since v2.0.0