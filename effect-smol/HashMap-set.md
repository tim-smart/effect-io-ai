Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.set

Sets the specified key to the specified value using the internal hashing
function.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map1 = HashMap.make(["a", 1])
const map2 = HashMap.set(map1, "b", 2)

console.log(HashMap.size(map2)) // 2
console.log(HashMap.get(map2, "b")) // Option.some(2)

// Original map is unchanged
console.log(HashMap.size(map1)) // 1
```

**Signature**

```ts
declare const set: { <K, V>(key: K, value: V): (self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, key: K, value: V): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L489)

Since v2.0.0