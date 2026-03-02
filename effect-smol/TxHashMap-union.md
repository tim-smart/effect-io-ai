Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.union

Merges another HashMap into this TxHashMap. If both maps contain the same key,
the value from the other map will be used.

**Mutation behavior**: This function mutates the original TxHashMap by merging
the provided HashMap into it. It does not return a new TxHashMap reference.

**Example**

```ts
import { Effect, HashMap, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create initial user preferences
  const userPrefs = yield* TxHashMap.make(
    ["theme", "light"],
    ["language", "en"],
    ["notifications", "enabled"]
  )

  // New preferences to merge in
  const newSettings = HashMap.make(
    ["theme", "dark"], // will override existing
    ["timezone", "UTC"], // new setting
    ["sound", "enabled"] // new setting
  )

  // Merge the new settings
  yield* TxHashMap.union(userPrefs, newSettings)

  // Check the merged result
  const theme = yield* TxHashMap.get(userPrefs, "theme")
  console.log(theme) // Option.some("dark") - overridden

  const language = yield* TxHashMap.get(userPrefs, "language")
  console.log(language) // Option.some("en") - preserved

  const timezone = yield* TxHashMap.get(userPrefs, "timezone")
  console.log(timezone) // Option.some("UTC") - newly added

  const size = yield* TxHashMap.size(userPrefs)
  console.log(size) // 5 total settings
})
```

**Signature**

```ts
declare const union: { <K1 extends K, K, V1 extends V, V>(other: HashMap.HashMap<K1, V1>): (self: TxHashMap<K, V>) => Effect.Effect<void, never, Effect.Transaction>; <K1 extends K, K, V1 extends V, V>(self: TxHashMap<K, V>, other: HashMap.HashMap<K1, V1>): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L985)

Since v2.0.0