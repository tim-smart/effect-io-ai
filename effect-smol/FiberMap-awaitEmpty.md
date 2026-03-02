Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.awaitEmpty

Wait for the FiberMap to be empty.
This will wait for all currently running fibers to complete.

**Example**

```ts
import { Effect, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  // Add some fibers that will complete after a delay
  yield* FiberMap.run(map, "task1", Effect.sleep(1000))
  yield* FiberMap.run(map, "task2", Effect.sleep(2000))

  console.log("Waiting for all fibers to complete...")

  // Wait for the map to be empty
  yield* FiberMap.awaitEmpty(map)

  console.log("All fibers completed!")
  console.log(yield* FiberMap.size(map)) // 0
})
```

**Signature**

```ts
declare const awaitEmpty: <K, A, E>(self: FiberMap<K, A, E>) => Effect.Effect<void, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L911)

Since v3.13.0