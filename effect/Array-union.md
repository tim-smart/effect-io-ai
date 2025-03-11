## union

Creates a union of two arrays, removing duplicates.

**Example**

```ts
import { Array } from "effect"

const result = Array.union([1, 2], [2, 3])
console.log(result) // [1, 2, 3]
```

**Signature**

```ts
declare const union: { <T extends Iterable<any>>(that: T): <S extends Iterable<any>>(self: S) => ReadonlyArray.OrNonEmpty<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>; <A, B>(self: NonEmptyReadonlyArray<A>, that: ReadonlyArray<B>): NonEmptyArray<A | B>; <A, B>(self: ReadonlyArray<A>, that: NonEmptyReadonlyArray<B>): NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, that: Iterable<B>): Array<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2158)

Since v2.0.0