Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.get

Reads the current chunk from the `TxChunk`.

**Example** (Reading the current chunk)

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3])

  // Read the current value within a transaction
  const chunk = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(chunk)) // [1, 2, 3]

  // The value is tracked for conflict detection
  const size = Chunk.size(chunk)
  console.log(size) // 3
})
```

**Signature**

```ts
declare const get: <A>(self: TxChunk<A>) => Effect.Effect<Chunk.Chunk<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxChunk.ts#L336)

Since v4.0.0