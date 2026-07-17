Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.entries

Returns an array of all key-value pairs in the TxHashMap.

**Example** (Reading entries)

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const config = yield* TxHashMap.make(
    ["host", "localhost"],
    ["port", "3000"],
    ["ssl", "false"]
  )

  const allEntries = yield* TxHashMap.entries(config)
  const sortedEntries = allEntries.toSorted(([left], [right]) => left.localeCompare(right))
  console.log(sortedEntries)
  // [["host", "localhost"], ["port", "3000"], ["ssl", "false"]]

  // Process configuration entries
  for (const [key, value] of sortedEntries) {
    console.log(`${key}=${value}`)
  }
  // host=localhost
  // port=3000
  // ssl=false
})
```

**Signature**

```ts
declare const entries: <K, V>(self: TxHashMap<K, V>) => Effect.Effect<Array<readonly [K, V]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxHashMap.ts#L937)

Since v4.0.0