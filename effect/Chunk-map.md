# map

Transforms the elements of a chunk using the specified mapping function.
If the input chunk is non-empty, the resulting chunk will also be non-empty.

To import and use `map` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.map
```

**Example**

```ts
import { Chunk } from "effect"

assert.deepStrictEqual(
  Chunk.map(Chunk.make(1, 2), (n) => n + 1),
  Chunk.make(2, 3)
)
```

**Signature**

```ts
export declare const map: {
  <S extends Chunk<any>, B>(f: (a: Chunk.Infer<S>, i: number) => B): (self: S) => Chunk.With<S, B>
  <A, B>(self: NonEmptyChunk<A>, f: (a: A, i: number) => B): NonEmptyChunk<B>
  <A, B>(self: Chunk<A>, f: (a: A, i: number) => B): Chunk<B>
}
```
