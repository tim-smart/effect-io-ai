Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.forEach

Applies the specified function to the entries of the `HashMap`.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map = HashMap.make(["a", 1], ["b", 2])
const collected: Array<[string, number]> = []

HashMap.forEach(map, (value, key) => {
  collected.push([key, value])
})

console.log(collected.sort()) // [["a", 1], ["b", 2]]
```

**Signature**

```ts
declare const forEach: { <V, K>(f: (value: V, key: K) => void): (self: HashMap<K, V>) => void; <V, K>(self: HashMap<K, V>, f: (value: V, key: K) => void): void; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L1000)

Since v2.0.0