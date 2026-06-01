Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.awaitEmpty

Waits for the fiber in the FiberHandle to complete.

**Example** (Waiting for a fiber to complete)

```ts
import { Effect, FiberHandle } from "effect"

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()

  // Start a long-running effect
  yield* FiberHandle.run(handle, Effect.sleep(1000))

  // Wait for the fiber to complete
  yield* FiberHandle.awaitEmpty(handle)

  console.log("Fiber completed")
})
```

**Signature**

```ts
declare const awaitEmpty: <A, E>(self: FiberHandle<A, E>) => Effect.Effect<void, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L839)

Since v3.13.0