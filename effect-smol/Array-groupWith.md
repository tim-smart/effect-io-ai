Package: `effect`<br />
Module: `Array`<br />

## Array.groupWith

Groups consecutive equal elements using a custom equivalence function.

- Only groups **adjacent** elements — non-adjacent duplicates stay separate.
- Requires a `NonEmptyReadonlyArray`.

**Example** (Grouping consecutive equal elements)

```ts
import { Array } from "effect"

console.log(Array.groupWith(["a", "a", "b", "b", "b", "c", "a"], (x, y) => x === y))
// [["a", "a"], ["b", "b", "b"], ["c"], ["a"]]
```

**See**

- `group` — uses default equality
- `groupBy` — group by a key function into a record

**Signature**

```ts
declare const groupWith: { <A>(isEquivalent: (self: A, that: A) => boolean): (self: NonEmptyReadonlyArray<A>) => NonEmptyArray<NonEmptyArray<A>>; <A>(self: NonEmptyReadonlyArray<A>, isEquivalent: (self: A, that: A) => boolean): NonEmptyArray<NonEmptyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2600)

Since v2.0.0