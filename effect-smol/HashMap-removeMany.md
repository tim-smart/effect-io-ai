Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.removeMany

Removes all entries in the `HashMap` which have the specified keys.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map1 = HashMap.make(["a", 1], ["b", 2], ["c", 3], ["d", 4])
const map2 = HashMap.removeMany(map1, ["b", "d"])

console.log(HashMap.size(map2)) // 2
console.log(HashMap.has(map2, "a")) // true
console.log(HashMap.has(map2, "c")) // true
```

**Signature**

```ts
declare const removeMany: { <K>(keys: Iterable<K>): <V>(self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, keys: Iterable<K>): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L901)

Since v2.0.0