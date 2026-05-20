Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.has

Checks if the MutableHashMap contains the specified key.

**Example** (Checking for a key)

```ts
import { MutableHashMap } from "effect"

const map = MutableHashMap.make(["key1", 42], ["key2", 100])

console.log(MutableHashMap.has(map, "key1")) // true
console.log(MutableHashMap.has(map, "key3")) // false

// Pipe-able version
const hasKey = MutableHashMap.has("key1")
console.log(hasKey(map)) // true
```

**Signature**

```ts
declare const has: { <K>(key: K): <V>(self: MutableHashMap<K, V>) => boolean; <K, V>(self: MutableHashMap<K, V>, key: K): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L350)

Since v2.0.0