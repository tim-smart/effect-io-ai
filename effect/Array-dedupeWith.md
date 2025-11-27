Package: `effect`<br />
Module: `Array`<br />

## Array.dedupeWith

Remove duplicates from an `Iterable` using the provided `isEquivalent` function,
preserving the order of the first occurrence of each element.

**Example**

```ts
import { Array } from "effect"

const result = Array.dedupeWith([1, 2, 2, 3, 3, 3], (a, b) => a === b)
console.log(result) // [1, 2, 3]
```

**Signature**

```ts
declare const dedupeWith: { <S extends Iterable<any>>(isEquivalent: (self: ReadonlyArray.Infer<S>, that: ReadonlyArray.Infer<S>) => boolean): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>; <A>(self: NonEmptyReadonlyArray<A>, isEquivalent: (self: A, that: A) => boolean): NonEmptyArray<A>; <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3172)

Since v2.0.0