Package: `effect`<br />
Module: `Array`<br />

## Array.groupWith

Groups consecutive equal elements using a custom equivalence function.

**When to use**

Use when you already have a non-empty array arranged so matching elements are
adjacent and need a custom equivalence function.

**Details**

Only adjacent elements are grouped. Non-adjacent duplicates stay separate.
Requires a `NonEmptyReadonlyArray`.

**Example** (Grouping consecutive equal elements)

```ts
import { Array } from "effect"

console.log(Array.groupWith(["a", "a", "b", "b", "b", "c", "a"], (x, y) => x === y))
// [["a", "a"], ["b", "b", "b"], ["c"], ["a"]]
```

**See**

- `group` for grouping adjacent elements with `Equal.equivalence()`
- `groupBy` for grouping all elements into a record by key, regardless of adjacency

**Signature**

```ts
declare const groupWith: { <A>(isEquivalent: (self: A, that: A) => boolean): (self: NonEmptyReadonlyArray<A>) => NonEmptyArray<NonEmptyArray<A>>; <A>(self: NonEmptyReadonlyArray<A>, isEquivalent: (self: A, that: A) => boolean): NonEmptyArray<NonEmptyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2971)

Since v2.0.0