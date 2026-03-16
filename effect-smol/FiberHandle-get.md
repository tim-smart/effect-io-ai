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

  // Get the current fiber if present
  const fiber = yield* FiberHandle.get(handle)
  if (fiber._tag === "Some") {
    const result = yield* Fiber.await(fiber.value)
    console.log(result) // "hello"
  }
})
```

**Signature**

```ts
declare const get: <A, E>(self: FiberHandle<A, E>) => Effect.Effect<Option.Option<Fiber.Fiber<A, E>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L410)

Since v2.0.0