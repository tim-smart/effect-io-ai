Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.getUnsafe

Retrieve the fiber from the FiberHandle.

**Example**

```ts
import { Effect, FiberHandle } from "effect"

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()

  // No fiber initially
  const emptyFiber = FiberHandle.getUnsafe(handle)
  console.log(emptyFiber === undefined) // true

  // Add a fiber
  yield* FiberHandle.run(handle, Effect.succeed("hello"))
  const fiber = FiberHandle.getUnsafe(handle)
  console.log(fiber !== undefined) // true
})
```

**Signature**

```ts
declare const getUnsafe: <A, E>(self: FiberHandle<A, E>) => Fiber.Fiber<A, E> | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L380)

Since v2.0.0