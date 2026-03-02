Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.isNonEmpty

Checks if the `TxChunk` is non-empty.

**Example**

```ts
import { Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const emptyChunk = yield* TxChunk.empty<number>()
  const nonEmptyChunk = yield* TxChunk.fromIterable([1, 2, 3])

  // Check if chunks are non-empty - automatically transactional
  const isNonEmpty1 = yield* TxChunk.isNonEmpty(emptyChunk)
  const isNonEmpty2 = yield* TxChunk.isNonEmpty(nonEmptyChunk)

  console.log(isNonEmpty1) // false
  console.log(isNonEmpty2) // true
})
```

**Signature**

```ts
declare const isNonEmpty: <A>(self: TxChunk<A>) => Effect.Effect<boolean, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L491)

Since v4.0.0