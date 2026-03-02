Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.union

Performs a union of this `HashMap` and that `HashMap`.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map1 = HashMap.make(["a", 1], ["b", 2])
const map2 = HashMap.make(["b", 20], ["c", 3])
const union = HashMap.union(map1, map2)

console.log(HashMap.size(union)) // 3
console.log(HashMap.get(union, "b")) // Option.some(20) - map2 wins
```

**Signature**

```ts
declare const union: { <K1, V1>(that: HashMap<K1, V1>): <K0, V0>(self: HashMap<K0, V0>) => HashMap<K1 | K0, V1 | V0>; <K0, V0, K1, V1>(self: HashMap<K0, V0>, that: HashMap<K1, V1>): HashMap<K0 | K1, V0 | V1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L854)

Since v2.0.0