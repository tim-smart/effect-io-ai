Package: `effect`<br />
Module: `Array`<br />

## Array.unionWith

Computes the union of two arrays using a custom equivalence, removing
duplicates.

**Example** (Union with custom equality)

```ts
import { Array } from "effect"

console.log(Array.unionWith([1, 2], [2, 3], (a, b) => a === b)) // [1, 2, 3]
```

**See**

- `union` — uses default equality
- `intersection` — elements in both arrays
- `difference` — elements only in the first array

**Signature**

```ts
declare const unionWith: { <S extends Iterable<any>, T extends Iterable<any>>(that: T, isEquivalent: (self: ReadonlyArray.Infer<S>, that: ReadonlyArray.Infer<T>) => boolean): (self: S) => ReadonlyArray.OrNonEmpty<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>; <A, B>(self: NonEmptyReadonlyArray<A>, that: Iterable<B>, isEquivalent: (self: A, that: B) => boolean): NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, that: NonEmptyReadonlyArray<B>, isEquivalent: (self: A, that: B) => boolean): NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, that: Iterable<B>, isEquivalent: (self: A, that: B) => boolean): Array<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2720)

Since v2.0.0