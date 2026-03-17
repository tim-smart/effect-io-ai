Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.get

Retrieves the value associated with the specified key from the MutableHashMap.

**Example**

```ts
import * as MutableHashMap from "effect/MutableHashMap"

const map = MutableHashMap.make(["key1", 42], ["key2", 100])

console.log(MutableHashMap.get(map, "key1")) // Some(42)
console.log(MutableHashMap.get(map, "key3")) // None

// Pipe-able version
const getValue = MutableHashMap.get("key1")
console.log(getValue(map)) // Some(42)
```

**Signature**

```ts
declare const get: { <K>(key: K): <V>(self: MutableHashMap<K, V>) => Option.Option<V>; <K, V>(self: MutableHashMap<K, V>, key: K): Option.Option<V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L212)

Since v2.0.0