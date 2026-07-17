Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.remove

Removes a fiber from the FiberMap, interrupting it if it exists.

**Example** (Removing a fiber)

```ts
import { Effect, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  // Add some fibers to the map
  yield* FiberMap.run(map, "task1", Effect.never)
  yield* FiberMap.run(map, "task2", Effect.never)

  console.log(yield* FiberMap.size(map)) // 2

  // Remove a specific fiber (this will interrupt it)
  yield* FiberMap.remove(map, "task1")

  console.log(yield* FiberMap.size(map)) // 1
})
```

**Signature**

```ts
declare const remove: { <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => Effect.Effect<void>; <K, A, E>(self: FiberMap<K, A, E>, key: K): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberMap.ts#L637)

Since v2.0.0