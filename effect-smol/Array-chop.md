Package: `effect`<br />
Module: `Array`<br />

## Array.chop

Applies a function repeatedly to consume prefixes of the array and collect
the values it produces.

**When to use**

Use when you need custom grouping logic where each step returns both a value
and the remaining input.

**Details**

The function receives a `NonEmptyReadonlyArray` and returns `[value, rest]`.
Processing continues until the remaining array is empty.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2685)

Since v2.0.0