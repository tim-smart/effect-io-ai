Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.size

Gets the size of the `TxChunk`.

**Example**

```ts
import { Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3, 4, 5])

  // Get the current size - automatically transactional
  const currentSize = yield* TxChunk.size(txChunk)
  console.log(currentSize) // 5

  // Size is tracked for conflict detection
  yield* TxChunk.append(txChunk, 6)
  const newSize = yield* TxChunk.size(txChunk)
  console.log(newSize) // 6
})
```

**Signature**

```ts
declare const size: <A>(self: TxChunk<A>) => Effect.Effect<number, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L439)

Since v4.0.0