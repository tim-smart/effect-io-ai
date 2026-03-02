Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.clear

Interrupt all fibers in the FiberSet and clear the set.

**Example**

```ts
import { Effect, FiberSet } from "effect"

const program = Effect.gen(function*() {
  const set = yield* FiberSet.make()

  // Add some fibers
  yield* FiberSet.run(set, Effect.never)
  yield* FiberSet.run(set, Effect.never)

  console.log(yield* FiberSet.size(set)) // 2

  // Clear all fibers
  yield* FiberSet.clear(set)

  console.log(yield* FiberSet.size(set)) // 0
})
```

**Signature**

```ts
declare const clear: <A, E>(self: FiberSet<A, E>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L367)

Since v2.0.0