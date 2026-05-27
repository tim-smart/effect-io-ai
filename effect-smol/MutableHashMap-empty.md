Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.empty

Creates an empty MutableHashMap.

**When to use**

Use to create a fresh mutable map before adding entries over time.

**Details**

Each call returns a new empty map instance.

**Example** (Creating an empty map)

```ts
import { MutableHashMap } from "effect"

const map = MutableHashMap.empty<string, number>()

// Add some entries
MutableHashMap.set(map, "key1", 42)
MutableHashMap.set(map, "key2", 100)

console.log(MutableHashMap.size(map)) // 2
```

**See**

- `make` for creating a map from explicit entries
- `fromIterable` for creating a map from an iterable of entries

**Signature**

```ts
declare const empty: <K, V>() => MutableHashMap<K, V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L183)

Since v2.0.0