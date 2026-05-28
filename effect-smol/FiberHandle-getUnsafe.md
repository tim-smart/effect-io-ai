Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.getUnsafe

Retrieves the fiber from the FiberHandle synchronously.

**Example** (Reading the current fiber unsafely)

```ts
import { Effect, FiberHandle } from "effect"

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()

  // No fiber initially
  const emptyFiber = FiberHandle.getUnsafe(handle)
  console.log(emptyFiber._tag === "None") // true

  // Add a fiber
  yield* FiberHandle.run(handle, Effect.succeed("hello"))
  const fiber = FiberHandle.getUnsafe(handle)
  console.log(fiber._tag === "Some") // true
})
```

**Signature**

```ts
declare const getUnsafe: <A, E>(self: FiberHandle<A, E>) => Option.Option<Fiber.Fiber<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L453)

Since v4.0.0