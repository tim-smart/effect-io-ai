Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.map

Maps over the entries of the `HashMap` using the specified function.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map1 = HashMap.make(["a", 1], ["b", 2], ["c", 3])
const map2 = HashMap.map(map1, (value, key) => `${key}:${value * 2}`)

console.log(HashMap.get(map2, "a")) // Option.some("a:2")
console.log(HashMap.get(map2, "b")) // Option.some("b:4")
```

**Signature**

```ts
declare const map: { <A, V, K>(f: (value: V, key: K) => A): (self: HashMap<K, V>) => HashMap<K, A>; <K, V, A>(self: HashMap<K, V>, f: (value: V, key: K) => A): HashMap<K, A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L947)

Since v2.0.0