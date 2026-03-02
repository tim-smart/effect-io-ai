Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.get

Retrieve the fiber from the FiberHandle.

**Example**

```ts
import { Effect, Fiber, FiberHandle } from "effect"

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()

  // Add a fiber
  yield* FiberHandle.run(handle, Effect.succeed("hello"))

  // Get the fiber (fails if no fiber)
  const fiber = yield* FiberHandle.get(handle)
  if (fiber) {
    const result = yield* Fiber.await(fiber)
    console.log(result) // "hello"
  }
})
```

**Signature**

```ts
declare const get: <A, E>(self: FiberHandle<A, E>) => Effect.Effect<Fiber.Fiber<A, E> | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L409)

Since v2.0.0