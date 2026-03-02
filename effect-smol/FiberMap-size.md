Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.size

Get the number of fibers currently in the FiberMap.

**Example**

```ts
import { Effect, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  console.log(yield* FiberMap.size(map)) // 0

  // Add some fibers
  yield* FiberMap.run(map, "task1", Effect.never)
  yield* FiberMap.run(map, "task2", Effect.never)

  console.log(yield* FiberMap.size(map)) // 2
})
```

**Signature**

```ts
declare const size: <K, A, E>(self: FiberMap<K, A, E>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L857)

Since v2.0.0