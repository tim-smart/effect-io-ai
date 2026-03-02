Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.FiberSet

A FiberSet is a collection of fibers that can be managed together.
When the associated Scope is closed, all fibers in the set will be interrupted.

**Example**

```ts
import { Effect, FiberSet } from "effect"

const program = Effect.gen(function*() {
  const set = yield* FiberSet.make<string, string>()

  // Add fibers to the set
  yield* FiberSet.run(set, Effect.succeed("hello"))
  yield* FiberSet.run(set, Effect.succeed("world"))

  // Wait for all fibers to complete
  yield* FiberSet.awaitEmpty(set)
})
```

**Signature**

```ts
export interface FiberSet<out A = unknown, out E = unknown>
  extends Pipeable, Inspectable.Inspectable, Iterable<Fiber.Fiber<A, E>>
{
  readonly [TypeId]: typeof TypeId
  readonly deferred: Deferred.Deferred<void, unknown>
  state: {
    readonly _tag: "Open"
    readonly backing: Set<Fiber.Fiber<A, E>>
  } | {
    readonly _tag: "Closed"
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L44)

Since v2.0.0