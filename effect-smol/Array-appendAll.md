Package: `effect`<br />
Module: `Array`<br />

## Array.appendAll

Concatenates two iterables into a single array.

- If either input is non-empty, the result is a `NonEmptyArray`.
- Does not mutate the inputs.

**Example** (Concatenating arrays)

```ts
import { Array } from "effect"

const result = Array.appendAll([1, 2], [3, 4])
console.log(result) // [1, 2, 3, 4]
```

**See**

- `append` — add a single element to the end
- `prependAll` — add elements to the front

**Signature**

```ts
declare const appendAll: { <S extends Iterable<any>, T extends Iterable<any>>(that: T): (self: S) => ReadonlyArray.OrNonEmpty<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>; <A, B>(self: Iterable<A>, that: NonEmptyReadonlyArray<B>): NonEmptyArray<A | B>; <A, B>(self: NonEmptyReadonlyArray<A>, that: Iterable<B>): NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, that: Iterable<B>): Array<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L657)

Since v2.0.0