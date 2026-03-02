Package: `effect`<br />
Module: `Array`<br />

## Array.chop

Repeatedly applies a function that consumes a prefix of the array and
produces a value plus the remaining elements, collecting the values.

- The function receives a `NonEmptyReadonlyArray` and returns
  `[value, rest]`.
- Continues until the remaining array is empty.
- Useful for custom splitting/grouping logic.

**Example** (Chopping an array)

```ts
import { Array } from "effect"

const result = Array.chop(
  [1, 2, 3, 4, 5],
  (as): [number, Array<number>] => [as[0] * 2, as.slice(1)]
)
console.log(result) // [2, 4, 6, 8, 10]
```

**See**

- `chunksOf` — split into fixed-size chunks
- `splitAt` — split at an index

**Signature**

```ts
declare const chop: { <S extends Iterable<any>, B>(f: (as: NonEmptyReadonlyArray<ReadonlyArray.Infer<S>>) => readonly [B, ReadonlyArray<ReadonlyArray.Infer<S>>]): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>; <A, B>(self: NonEmptyReadonlyArray<A>, f: (as: NonEmptyReadonlyArray<A>) => readonly [B, ReadonlyArray<A>]): NonEmptyArray<B>; <A, B>(self: Iterable<A>, f: (as: NonEmptyReadonlyArray<A>) => readonly [B, ReadonlyArray<A>]): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2291)

Since v2.0.0