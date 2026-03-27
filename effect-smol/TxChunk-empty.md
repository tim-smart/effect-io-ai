Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.empty

Creates a new empty `TxChunk`.

**Return behavior**: This function returns a new TxChunk reference that is
initially empty. No existing TxChunk instances are modified.

**Example**

```ts
import { Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  // Create an empty TxChunk
  const txChunk = yield* TxChunk.empty<number>()

  // Check if it's empty - automatically transactional
  const isEmpty = yield* TxChunk.isEmpty(txChunk)
  console.log(isEmpty) // true

  // Add elements - automatically transactional
  yield* TxChunk.append(txChunk, 42)

  const isStillEmpty = yield* TxChunk.isEmpty(txChunk)
  console.log(isStillEmpty) // false
})
```

**Signature**

```ts
declare const empty: <A = never>() => Effect.Effect<TxChunk<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L143)

Since v4.0.0