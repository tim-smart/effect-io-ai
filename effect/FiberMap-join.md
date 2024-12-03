# join

Join all fibers in the FiberMap. If any of the Fiber's in the map terminate with a failure,
the returned Effect will terminate with the first failure that occurred.

To import and use `join` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.join
```

**Example**

```ts
import { Effect, FiberMap } from "effect"

Effect.gen(function* (_) {
  const map = yield* _(FiberMap.make())
  yield* _(FiberMap.set(map, "a", Effect.runFork(Effect.fail("error"))))

  // parent fiber will fail with "error"
  yield* _(FiberMap.join(map))
})
```

**Signature**

```ts
export declare const join: <K, A, E>(self: FiberMap<K, A, E>) => Effect.Effect<void, E>
```
