Package: `effect`<br />
Module: `FiberMap`<br />

## FiberMap.hasUnsafe

Check if a key exists in the FiberMap.

**Example**

```ts
import { Effect, FiberMap } from "effect"

const program = Effect.gen(function*() {
  const map = yield* FiberMap.make<string>()

  // Add a fiber to the map
  yield* FiberMap.run(map, "task1", Effect.succeed("Hello"))

  // Check if keys exist
  console.log(FiberMap.hasUnsafe(map, "task1")) // true
  console.log(FiberMap.hasUnsafe(map, "task2")) // false
})
```

**Signature**

```ts
declare const hasUnsafe: { <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => boolean; <K, A, E>(self: FiberMap<K, A, E>, key: K): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FiberMap.ts#L484)

Since v2.0.0