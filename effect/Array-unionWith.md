Package: `effect`<br />
Module: `Array`<br />

## Array.unionWith

Calculates the union of two arrays using the provided equivalence relation.

**Example**

```ts
import { Array } from "effect"

const union = Array.unionWith([1, 2], [2, 3], (a, b) => a === b)
console.log(union) // [1, 2, 3]
```

**Signature**

```ts
declare const unionWith: { <S extends Iterable<any>, T extends Iterable<any>>(that: T, isEquivalent: (self: ReadonlyArray.Infer<S>, that: ReadonlyArray.Infer<T>) => boolean): (self: S) => ReadonlyArray.OrNonEmpty<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>; <A, B>(self: NonEmptyReadonlyArray<A>, that: Iterable<B>, isEquivalent: (self: A, that: B) => boolean): NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, that: NonEmptyReadonlyArray<B>, isEquivalent: (self: A, that: B) => boolean): NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, that: Iterable<B>, isEquivalent: (self: A, that: B) => boolean): Array<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2224)

Since v2.0.0