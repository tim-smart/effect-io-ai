Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.clear

Remove all fibers from the FiberMap, interrupting them.

**Example**

```ts
import { Effect, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  // Add some fibers to the map
  yield* FiberMap.run(map, "task1", Effect.never)
  yield* FiberMap.run(map, "task2", Effect.never)
  yield* FiberMap.run(map, "task3", Effect.never)

  console.log(yield* FiberMap.size(map)) // 3

  // Clear all fibers (this will interrupt all of them)
  yield* FiberMap.clear(map)

  console.log(yield* FiberMap.size(map)) // 0
})
```

**Signature**

```ts
declare const clear: <K, A, E>(self: FiberMap<K, A, E>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L603)

Since v2.0.0