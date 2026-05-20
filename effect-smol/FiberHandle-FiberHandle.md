Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.FiberHandle

Scoped handle that manages at most one fiber, interrupts the current fiber
when the handle's scope closes, and removes managed fibers from the handle
when they complete.

**Example** (Managing a single fiber)

```ts
import { Effect, Fiber, FiberHandle } from "effect"

Effect.gen(function*() {
  // Create a FiberHandle that can hold fibers producing strings
  const handle = yield* FiberHandle.make<string, never>()

  // The handle can store and manage a single fiber
  const fiber = yield* FiberHandle.run(handle, Effect.succeed("hello"))
  const result = yield* Fiber.await(fiber)
  console.log(result) // "hello"
})
```

**Signature**

```ts
export interface FiberHandle<out A = unknown, out E = unknown> extends Pipeable, Inspectable.Inspectable {
  readonly [TypeId]: typeof TypeId
  readonly deferred: Deferred.Deferred<void, unknown>
  state: {
    readonly _tag: "Open"
    fiber: Fiber.Fiber<A, E> | undefined
  } | {
    readonly _tag: "Closed"
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberHandle.ts#L85)

Since v2.0.0