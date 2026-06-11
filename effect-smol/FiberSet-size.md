Package: `effect`<br />
Module: `FiberSet`<br />

## FiberSet.size

Gets the number of fibers currently in the FiberSet.

**Example** (Checking the set size)

```ts
import { Effect, FiberSet } from "effect"

const program = Effect.gen(function*() {
  const set = yield* FiberSet.make()

  console.log(yield* FiberSet.size(set)) // 0

  // Add some fibers
  yield* FiberSet.run(set, Effect.never)
  yield* FiberSet.run(set, Effect.never)

  console.log(yield* FiberSet.size(set)) // 2
})
```

**Signature**

```ts
declare const size: <A, E>(self: FiberSet<A, E>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberSet.ts#L656)

Since v2.0.0