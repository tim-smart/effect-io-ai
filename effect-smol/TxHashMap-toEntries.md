Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.toEntries

Returns an array of all key-value pairs in the TxHashMap.
This is an alias for the `entries` function, providing API consistency with HashMap.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const settings = yield* TxHashMap.make(
    ["theme", "dark"],
    ["language", "en-US"],
    ["timezone", "UTC"]
  )

  // Get all entries as an array
  const allEntries = yield* TxHashMap.toEntries(settings)
  console.log(allEntries)
  // [["theme", "dark"], ["language", "en-US"], ["timezone", "UTC"]]

  // Process entries
  for (const [setting, value] of allEntries) {
    console.log(`${setting}: ${value}`)
  }

  // Convert to object for JSON serialization
  const settingsObj = Object.fromEntries(allEntries)
  console.log(JSON.stringify(settingsObj))
})
```

**Signature**

```ts
declare const toEntries: <K, V>(self: TxHashMap<K, V>) => Effect.Effect<Array<readonly [K, V]>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L2035)

Since v2.0.0