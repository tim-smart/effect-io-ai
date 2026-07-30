Package: `effect`<br />
Module: `Array`<br />

## Array.prependAll

Prepends the specified prefix array (or iterable) to the beginning of the specified array (or iterable).
If either array is non-empty, the result is also a non-empty array.

**Example**

```ts
import { Array } from "effect"

const result = Array.prependAll([2, 3], [0, 1])
console.log(result) // [0, 1, 2, 3]
```

**Signature**

```ts
declare const prependAll: { <S extends Iterable<any>, T extends Iterable<any>>(that: T): (self: S) => ReadonlyArray.OrNonEmpty<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>; <A, B>(self: Iterable<A>, that: NonEmptyReadonlyArray<B>): NonEmptyArray<A | B>; <A, B>(self: NonEmptyReadonlyArray<A>, that: Iterable<B>): NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, that: Iterable<B>): Array<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L382)

Since v2.0.0