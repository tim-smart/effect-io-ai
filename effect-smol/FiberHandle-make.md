Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.make

A FiberHandle can be used to store a single fiber.
When the associated Scope is closed, the contained fiber will be interrupted.

You can add a fiber to the handle using `FiberHandle.run`, and the fiber will
be automatically removed from the FiberHandle when it completes.

**Example**

```ts
import { Effect, FiberHandle } from "effect"

Effect.gen(function*() {
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
declare const make: <A = unknown, E = unknown>() => Effect.Effect<FiberHandle<A, E>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L115)

Since v2.0.0