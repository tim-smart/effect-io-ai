Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.make

A FiberSet can be used to store a collection of fibers.
When the associated Scope is closed, all fibers in the set will be interrupted.

You can add fibers to the set using `FiberSet.add` or `FiberSet.run`, and the fibers will
be automatically removed from the FiberSet when they complete.

**Example**

```ts
import { Effect, FiberSet } from "effect"

Effect.gen(function*() {
  const set = yield* FiberSet.make()

  // run some effects and add the fibers to the set
  yield* FiberSet.run(set, Effect.never)
  yield* FiberSet.run(set, Effect.never)

  yield* Effect.sleep(1000)
}).pipe(
  Effect.scoped // The fibers will be interrupted when the scope is closed
)
```

**Signature**

```ts
declare const make: <A = unknown, E = unknown>() => Effect.Effect<FiberSet<A, E>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberSet.ts#L117)

Since v2.0.0