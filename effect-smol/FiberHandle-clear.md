Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.clear

Interrupts the fiber currently stored in the `FiberHandle`, if any, and
leaves the handle empty.

**Example** (Clearing a fiber handle)

```ts
import { Effect, FiberHandle } from "effect"

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()

  // Add a fiber
  yield* FiberHandle.run(handle, Effect.never)

  // Clear the handle, interrupting the fiber
  yield* FiberHandle.clear(handle)

  // The handle is now empty
  const fiber = FiberHandle.getUnsafe(handle)
  console.log(fiber) // Option.none()
})
```

**Signature**

```ts
declare const clear: <A, E>(self: FiberHandle<A, E>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L499)

Since v2.0.0