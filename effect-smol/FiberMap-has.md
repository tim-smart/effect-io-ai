Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.has

Check if a key exists in the FiberMap.
This is the Effect-wrapped version of `hasUnsafe`.

**Example**

```ts
import { Effect, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  // Add a fiber to the map
  yield* FiberMap.run(map, "task1", Effect.succeed("Hello"))

  // Check if keys exist using Effect
  const exists1 = yield* FiberMap.has(map, "task1")
  const exists2 = yield* FiberMap.has(map, "task2")

  console.log(exists1) // true
  console.log(exists2) // false
})
```

**Signature**

```ts
declare const has: { <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => Effect.Effect<boolean>; <K, A, E>(self: FiberMap<K, A, E>, key: K): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L519)

Since v2.0.0