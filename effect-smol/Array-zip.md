Package: `effect`<br />
Module: `Array`<br />

## Array.zip

Pairs elements from two iterables by position. If the iterables differ in
length, the extra elements from the longer one are discarded.

- Returns `NonEmptyArray` when both inputs are non-empty.

**Example** (Zipping two arrays)

```ts
import { Array } from "effect"

console.log(Array.zip([1, 2, 3], ["a", "b"])) // [[1, "a"], [2, "b"]]
```

**See**

- `zipWith` — zip with a combiner function
- `unzip` — inverse operation

**Signature**

```ts
declare const zip: { <B>(that: NonEmptyReadonlyArray<B>): <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyArray<[A, B]>; <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Array<[A, B]>; <A, B>(self: NonEmptyReadonlyArray<A>, that: NonEmptyReadonlyArray<B>): NonEmptyArray<[A, B]>; <A, B>(self: Iterable<A>, that: Iterable<B>): Array<[A, B]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1946)

Since v2.0.0