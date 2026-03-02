Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.remove

Remove the entry for the specified key in the `HashMap` using the internal
hashing function.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map1 = HashMap.make(["a", 1], ["b", 2], ["c", 3])
const map2 = HashMap.remove(map1, "b")

console.log(HashMap.size(map2)) // 2
console.log(HashMap.has(map2, "b")) // false
console.log(HashMap.has(map2, "a")) // true
```

**Signature**

```ts
declare const remove: { <K>(key: K): <V>(self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, key: K): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L878)

Since v2.0.0