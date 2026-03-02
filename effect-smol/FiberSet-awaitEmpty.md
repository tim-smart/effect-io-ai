Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.awaitEmpty

Wait until the fiber set is empty.

**Example**

```ts
import { Effect, FiberSet } from "effect"

const program = Effect.gen(function*() {
  const set = yield* FiberSet.make()

  // Add some fibers that will complete
  yield* FiberSet.run(set, Effect.sleep(100))
  yield* FiberSet.run(set, Effect.sleep(200))

  // Wait for all fibers to complete
  yield* FiberSet.awaitEmpty(set)

  console.log(yield* FiberSet.size(set)) // 0
})
```

**Signature**

```ts
declare const awaitEmpty: <A, E>(self: FiberSet<A, E>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L645)

Since v3.13.0