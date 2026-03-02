Package: `effect`<br />
Module: `Array`<br />

## Array.dedupeWith

Removes duplicates using a custom equivalence, preserving the order of the
first occurrence.

**Example** (Deduplicating with custom equality)

```ts
import { Array } from "effect"

console.log(Array.dedupeWith([1, 2, 2, 3, 3, 3], (a, b) => a === b)) // [1, 2, 3]
```

**See**

- `dedupe` — uses default equality
- `dedupeAdjacentWith` — only dedupes consecutive elements

**Signature**

```ts
declare const dedupeWith: { <S extends Iterable<any>>(isEquivalent: (self: ReadonlyArray.Infer<S>, that: ReadonlyArray.Infer<S>) => boolean): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>; <A>(self: NonEmptyReadonlyArray<A>, isEquivalent: (self: A, that: A) => boolean): NonEmptyArray<A>; <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3848)

Since v2.0.0