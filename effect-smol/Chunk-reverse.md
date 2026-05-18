Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.reverse

Reverses the order of elements in a `Chunk`.
Importantly, if the input chunk is a `NonEmptyChunk`, the reversed chunk will also be a `NonEmptyChunk`.

**Example** (Reversing chunks)

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3)
const result = Chunk.reverse(chunk)

console.log(Chunk.toArray(result)) // [3, 2, 1]
```

**Signature**

```ts
declare const reverse: <S extends Chunk<any>>(self: S) => Chunk.With<S, Chunk.Infer<S>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L563)

Since v2.0.0