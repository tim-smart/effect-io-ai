Package: `effect`<br />
Module: `Array`<br />

## Array.prependAll

Prepends all elements from a prefix iterable to the front of an array.

- If either input is non-empty, the result is a `NonEmptyArray`.
- Does not mutate the input.

**Example** (Prepending multiple elements)

```ts
import { Array } from "effect"

const result = Array.prependAll([2, 3], [0, 1])
console.log(result) // [0, 1, 2, 3]
```

**See**

- `prepend` — add a single element to the front
- `appendAll` — add elements to the end

**Signature**

```ts
declare const prependAll: { <S extends Iterable<any>, T extends Iterable<any>>(that: T): (self: S) => ReadonlyArray.OrNonEmpty<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>; <A, B>(self: Iterable<A>, that: NonEmptyReadonlyArray<B>): NonEmptyArray<A | B>; <A, B>(self: NonEmptyReadonlyArray<A>, that: Iterable<B>): NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, that: Iterable<B>): Array<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L597)

Since v2.0.0