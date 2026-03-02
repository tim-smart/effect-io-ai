Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.FiberMap

A FiberMap is a collection of fibers, indexed by a key. When the associated
Scope is closed, all fibers in the map will be interrupted. Fibers are
automatically removed from the map when they complete.

**Example**

```ts
import { Effect, FiberMap } from "effect"

// Create a FiberMap with string keys
const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  // Add some fibers to the map
  yield* FiberMap.run(map, "task1", Effect.succeed("Hello"))
  yield* FiberMap.run(map, "task2", Effect.succeed("World"))

  // Get the size of the map
  const size = yield* FiberMap.size(map)
  console.log(size) // 2
})
```

**Signature**

```ts
export interface FiberMap<in out K, out A = unknown, out E = unknown>
  extends Pipeable, Inspectable.Inspectable, Iterable<[K, Fiber.Fiber<A, E>]>
{
  readonly [TypeId]: typeof TypeId
  readonly deferred: Deferred.Deferred<void, unknown>
  state: {
    readonly _tag: "Open"
    readonly backing: MutableHashMap.MutableHashMap<K, Fiber.Fiber<A, E>>
  } | {
    readonly _tag: "Closed"
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L49)

Since v2.0.0