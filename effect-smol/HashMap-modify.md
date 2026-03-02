Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.modify

Updates the value of the specified key within the `HashMap` if it exists.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map1 = HashMap.make(["a", 1], ["b", 2])
const map2 = HashMap.modify(map1, "a", (value) => value * 3)

console.log(HashMap.get(map2, "a")) // Option.some(3)
console.log(HashMap.get(map2, "b")) // Option.some(2)
```

**Signature**

```ts
declare const modify: { <K, V>(key: K, f: (v: V) => V): (self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, key: K, f: (v: V) => V): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L831)

Since v2.0.0