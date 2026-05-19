Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.toEntries

Returns an array of all key-value pairs in the TxHashMap.
This is an alias for the `entries` function, providing API consistency with HashMap.

**Example** (Converting to entries)

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
  const sortedEntries = allEntries.toSorted(([left], [right]) => left.localeCompare(right))
  console.log(sortedEntries)
  // [["language", "en-US"], ["theme", "dark"], ["timezone", "UTC"]]

  // Process entries
  for (const [setting, value] of sortedEntries) {
    console.log(`${setting}: ${value}`)
  }

  // Convert to object for JSON serialization
  const settingsObj = Object.fromEntries(sortedEntries)
  console.log(JSON.stringify(settingsObj))
  // {"language":"en-US","theme":"dark","timezone":"UTC"}
})
```

**Signature**

```ts
declare const toEntries: <K, V>(self: TxHashMap<K, V>) => Effect.Effect<Array<readonly [K, V]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L2106)

Since v4.0.0