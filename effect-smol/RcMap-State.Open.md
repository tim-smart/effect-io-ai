Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.State.Open

Represents the open/active state of an RcMap, containing the actual
resource map that stores entries.

**Example**

```ts
import type { RcMap } from "effect"
import * as MutableHashMap from "effect/MutableHashMap"

// State.Open contains the active resource map
declare const openState: RcMap.State.Open<string, number, never>

// Access the internal map when state is open
if (openState._tag === "Open") {
  // The map contains Entry objects indexed by keys
  const hasKey = MutableHashMap.has(openState.map, "someKey")
  console.log(`Map contains key: ${hasKey}`)
}
```

**Signature**

```ts
export interface Open<K, A, E> {
    readonly _tag: "Open"
    readonly map: MutableHashMap.MutableHashMap<K, Entry<A, E>>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L132)

Since v4.0.0