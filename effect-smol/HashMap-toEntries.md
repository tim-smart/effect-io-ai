Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.toEntries

Returns an `Array<[K, V]>` of the entries within the `HashMap`.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const gameScores = HashMap.make(
  ["alice", 1250],
  ["bob", 980],
  ["charlie", 1100]
)

// Convert to entries for processing
const scoreEntries = HashMap.toEntries(gameScores)

// Sort by score (descending)
const leaderboard = scoreEntries
  .sort(([, a], [, b]) => b - a)
  .map(([player, score], rank) => `${rank + 1}. ${player}: ${score}`)

console.log(leaderboard)
// ["1. alice: 1250", "2. charlie: 1100", "3. bob: 980"]

// Convert back to HashMap if needed
const sortedMap = HashMap.fromIterable(scoreEntries)
```

**Signature**

```ts
declare const toEntries: <K, V>(self: HashMap<K, V>) => Array<[K, V]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L625)

Since v2.0.0