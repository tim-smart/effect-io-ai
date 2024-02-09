# make

A FiberSet can be used to store a collection of fibers.
When the associated Scope is closed, all fibers in the set will be interrupted.

You can add fibers to the set using `FiberSet.add` or `FiberSet.run`, and the fibers will
be automatically removed from the FiberSet when they complete.

To import and use `make` from the "FiberSet" module:

```ts
import * as FiberSet from "effect/FiberSet"
// Can be accessed like this
FiberSet.make
```

**Example**

```ts
import { Effect, FiberSet } from "effect"

Effect.gen(function* (_) {
  const set = yield* _(FiberSet.make())

  // run some effects and add the fibers to the set
  yield* _(FiberSet.run(set, Effect.never))
  yield* _(FiberSet.run(set, Effect.never))

  yield* _(Effect.sleep(1000))
}).pipe(
  Effect.scoped // The fibers will be interrupted when the scope is closed
)
```

**Signature**

```ts
export declare const make: <A, E = never>() => Effect.Effect<FiberSet<A, E>, never, Scope.Scope>
```
