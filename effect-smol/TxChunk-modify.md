Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.modify

Modifies the value of the `TxChunk` using the provided function.

**Mutation behavior**: This function mutates the original TxChunk by updating
its internal state. It does not return a new TxChunk reference.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3])

  // Modify and return both old size and new chunk
  const oldSize = yield* TxChunk.modify(txChunk, (chunk) => [
    Chunk.size(chunk), // return value (old size)
    Chunk.append(chunk, 4) // new value
  ])

  console.log(oldSize) // 3

  const newChunk = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(newChunk)) // [1, 2, 3, 4]
})
```

**Signature**

```ts
declare const modify: { <A, R>(f: (current: Chunk.Chunk<NoInfer<A>>) => [returnValue: R, newValue: Chunk.Chunk<A>]): (self: TxChunk<A>) => Effect.Effect<R>; <A, R>(self: TxChunk<A>, f: (current: Chunk.Chunk<A>) => [returnValue: R, newValue: Chunk.Chunk<A>]): Effect.Effect<R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L235)

Since v4.0.0