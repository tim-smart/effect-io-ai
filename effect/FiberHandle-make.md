# make

A FiberHandle can be used to store a single fiber.
When the associated Scope is closed, the contained fiber will be interrupted.

You can add a fiber to the handle using `FiberHandle.run`, and the fiber will
be automatically removed from the FiberHandle when it completes.

To import and use `make` from the "FiberHandle" module:

```ts
import * as FiberHandle from "effect/FiberHandle"
// Can be accessed like this
FiberHandle.make
```

**Example**

```ts
import { Effect, FiberHandle } from "effect"

Effect.gen(function* () {
  const handle = yield* FiberHandle.make()

  // run some effects
  yield* FiberHandle.run(handle, Effect.never)
  // this will interrupt the previous fiber
  yield* FiberHandle.run(handle, Effect.never)

  yield* Effect.sleep(1000)
}).pipe(
  Effect.scoped // The fiber will be interrupted when the scope is closed
)
```

**Signature**

```ts
export declare const make: <A = unknown, E = unknown>() => Effect.Effect<FiberHandle<A, E>, never, Scope.Scope>
```
