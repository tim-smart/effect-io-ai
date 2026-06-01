Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.has

Checks whether the MutableHashMap contains the specified key.

**When to use**

Use to test whether a key is present in a `MutableHashMap` without reading
its value.

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

**See**

- `get` for reading the value as an `Option`

**Signature**

```ts
declare const has: { <K>(key: K): <V>(self: MutableHashMap<K, V>) => boolean; <K, V>(self: MutableHashMap<K, V>, key: K): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L440)

Since v2.0.0