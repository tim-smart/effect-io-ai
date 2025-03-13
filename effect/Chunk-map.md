Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.map

Transforms the elements of a chunk using the specified mapping function.
If the input chunk is non-empty, the resulting chunk will also be non-empty.

**Example**

```ts
import * as assert from "node:assert"
import { Chunk } from "effect"

assert.deepStrictEqual(
  Chunk.map(Chunk.make(1, 2), (n) => n + 1),
  Chunk.make(2, 3)
)
```

**Signature**

```ts
declare const map: { <S extends Chunk<any>, B>(f: (a: Chunk.Infer<S>, i: number) => B): (self: S) => Chunk.With<S, B>; <A, B>(self: NonEmptyChunk<A>, f: (a: A, i: number) => B): NonEmptyChunk<B>; <A, B>(self: Chunk<A>, f: (a: A, i: number) => B): Chunk<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L935)

Since v2.0.0