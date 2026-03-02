Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.flatMap

Chains over the entries of the `HashMap` using the specified function.

**NOTE**: the hash and equal of both maps have to be the same.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map1 = HashMap.make(["a", 1], ["b", 2])
const map2 = HashMap.flatMap(
  map1,
  (value, key) => HashMap.make([key + "1", value], [key + "2", value * 2])
)

console.log(HashMap.size(map2)) // 4
console.log(HashMap.get(map2, "a1")) // Option.some(1)
console.log(HashMap.get(map2, "b2")) // Option.some(4)
```

**Signature**

```ts
declare const flatMap: { <A, K, B>(f: (value: A, key: K) => HashMap<K, B>): (self: HashMap<K, A>) => HashMap<K, B>; <K, A, B>(self: HashMap<K, A>, f: (value: A, key: K) => HashMap<K, B>): HashMap<K, B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L975)

Since v2.0.0