Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.setMany

Sets multiple key-value pairs in the `HashMap`.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map1 = HashMap.make(["a", 1], ["b", 2])
const newEntries = [["c", 3], ["d", 4], ["a", 10]] as const // "a" will be overwritten
const map2 = HashMap.setMany(map1, newEntries)

console.log(HashMap.size(map2)) // 4
console.log(HashMap.get(map2, "a")) // Option.some(10)
console.log(HashMap.get(map2, "c")) // Option.some(3)
```

**Signature**

```ts
declare const setMany: { <K, V>(entries: Iterable<readonly [K, V]>): (self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, entries: Iterable<readonly [K, V]>): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L925)

Since v2.0.0