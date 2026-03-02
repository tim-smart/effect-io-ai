Package: `effect`<br />
Module: `Array`<br />

## Array.zipWith

Combines elements from two iterables pairwise using a function. If the
iterables differ in length, extra elements are discarded.

**Example** (Zipping with addition)

```ts
import { Array } from "effect"

console.log(Array.zipWith([1, 2, 3], [4, 5, 6], (a, b) => a + b)) // [5, 7, 9]
```

**See**

- `zip` — zip into tuples

**Signature**

```ts
declare const zipWith: { <B, A, C>(that: NonEmptyReadonlyArray<B>, f: (a: A, b: B) => C): (self: NonEmptyReadonlyArray<A>) => NonEmptyArray<C>; <B, A, C>(that: Iterable<B>, f: (a: A, b: B) => C): (self: Iterable<A>) => Array<C>; <A, B, C>(self: NonEmptyReadonlyArray<A>, that: NonEmptyReadonlyArray<B>, f: (a: A, b: B) => C): NonEmptyArray<C>; <B, A, C>(self: Iterable<A>, that: Iterable<B>, f: (a: A, b: B) => C): Array<C>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1972)

Since v2.0.0