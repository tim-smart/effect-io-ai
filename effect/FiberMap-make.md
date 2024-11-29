# make

A FiberMap can be used to store a collection of fibers, indexed by some key.
When the associated Scope is closed, all fibers in the map will be interrupted.

You can add fibers to the map using `FiberMap.set` or `FiberMap.run`, and the fibers will
be automatically removed from the FiberMap when they complete.

To import and use `make` from the "FiberMap" module:

ts
import \* as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.make
undefined

**Example**

```ts
import { Effect, FiberMap } from "effect"

Effect.gen(function* (_) {
  const map = yield* _(FiberMap.make<string>())

  // run some effects and add the fibers to the map
  yield* _(FiberMap.run(map, "fiber a", Effect.never))
  yield* _(FiberMap.run(map, "fiber b", Effect.never))

  yield* _(Effect.sleep(1000))
}).pipe(
  Effect.scoped // The fibers will be interrupted when the scope is closed
)
```

**Signature**

```ts
export declare const make: <K, A = unknown, E = unknown>() => Effect.Effect<FiberMap<K, A, E>, never, Scope.Scope>
```
