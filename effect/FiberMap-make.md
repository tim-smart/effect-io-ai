Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.make

A FiberMap can be used to store a collection of fibers, indexed by some key.
When the associated Scope is closed, all fibers in the map will be interrupted.

You can add fibers to the map using `FiberMap.set` or `FiberMap.run`, and the fibers will
be automatically removed from the FiberMap when they complete.

**Example**

```ts
import { Effect, FiberMap } from "effect"

Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  // run some effects and add the fibers to the map
  yield* FiberMap.run(map, "fiber a", Effect.never)
  yield* FiberMap.run(map, "fiber b", Effect.never)

  yield* Effect.sleep(1000)
}).pipe(
  Effect.scoped // The fibers will be interrupted when the scope is closed
)
```

**Signature**

```ts
declare const make: <K, A = unknown, E = unknown>() => Effect.Effect<FiberMap<K, A, E>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberMap.ts#L120)

Since v2.0.0