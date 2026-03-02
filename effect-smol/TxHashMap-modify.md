Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.modify

Updates the value for the specified key if it exists.

**Mutation behavior**: This function mutates the original TxHashMap by updating
the value at the specified key. It does not return a new TxHashMap reference.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const counters = yield* TxHashMap.make(
    ["downloads", 100],
    ["views", 250]
  )

  // Increment existing counter
  const oldDownloads = yield* TxHashMap.modify(
    counters,
    "downloads",
    (count) => count + 1
  )
  console.log(oldDownloads) // Option.some(100)

  const newDownloads = yield* TxHashMap.get(counters, "downloads")
  console.log(newDownloads) // Option.some(101)

  // Try to modify non-existent key
  const nonExistent = yield* TxHashMap.modify(
    counters,
    "clicks",
    (count) => count + 1
  )
  console.log(nonExistent) // Option.none()

  // Update views counter with direct method call
  yield* TxHashMap.modify(counters, "views", (views) => views * 2)
})
```

**Signature**

```ts
declare const modify: { <K, V>(key: K, f: (value: V) => V): (self: TxHashMap<K, V>) => Effect.Effect<Option.Option<V>, never, Effect.Transaction>; <K, V>(self: TxHashMap<K, V>, key: K, f: (value: V) => V): Effect.Effect<Option.Option<V>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L690)

Since v2.0.0