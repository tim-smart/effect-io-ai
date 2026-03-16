Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.Chunk.Infer

Infers the element type of a Chunk.

**Example**

```ts
import type { Chunk } from "effect"

declare const numberChunk: Chunk.Chunk<number>
declare const stringChunk: Chunk.Chunk<string>

type NumberType = Chunk.Chunk.Infer<typeof numberChunk> // number
type StringType = Chunk.Chunk.Infer<typeof stringChunk> // string
```

**Signature**

```ts
type Infer<S> = S extends Chunk<infer A> ? A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1535)

Since v2.0.0