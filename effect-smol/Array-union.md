Package: `effect`<br />
Module: `Array`<br />

## Array.union

Computes the union of two arrays, removing duplicates using
`Equal.equivalence()`.

**Example** (Array union)

```ts
import { Array } from "effect"

console.log(Array.union([1, 2], [2, 3])) // [1, 2, 3]
```

**See**

- `unionWith` — use custom equality
- `intersection` — elements in both arrays
- `difference` — elements only in the first array

**Signature**

```ts
declare const union: { <T extends Iterable<any>>(that: T): <S extends Iterable<any>>(self: S) => ReadonlyArray.OrNonEmpty<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>; <A, B>(self: NonEmptyReadonlyArray<A>, that: ReadonlyArray<B>): NonEmptyArray<A | B>; <A, B>(self: ReadonlyArray<A>, that: NonEmptyReadonlyArray<B>): NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, that: Iterable<B>): Array<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2765)

Since v2.0.0