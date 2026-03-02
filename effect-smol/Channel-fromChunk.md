Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromChunk

Creates a `Channel` that emits all elements from a chunk.

**Example**

```ts
import { Channel, Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3)
const channel = Channel.fromChunk(chunk)
// Emits: 1, 2, 3
```

**Signature**

```ts
declare const fromChunk: <A>(chunk: Chunk.Chunk<A>) => Channel<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L646)

Since v2.0.0