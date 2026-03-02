Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.isEmpty

Checks if the `TxChunk` is empty.

**Example**

```ts
import { Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const emptyChunk = yield* TxChunk.empty<number>()
  const nonEmptyChunk = yield* TxChunk.fromIterable([1, 2, 3])

  // Check if chunks are empty - automatically transactional
  const isEmpty1 = yield* TxChunk.isEmpty(emptyChunk)
  const isEmpty2 = yield* TxChunk.isEmpty(nonEmptyChunk)

  console.log(isEmpty1) // true
  console.log(isEmpty2) // false
})
```

**Signature**

```ts
declare const isEmpty: <A>(self: TxChunk<A>) => Effect.Effect<boolean, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L465)

Since v4.0.0