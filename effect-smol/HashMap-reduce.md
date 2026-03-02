Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.reduce

Reduces the specified state over the entries of the `HashMap`.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map = HashMap.make(["a", 1], ["b", 2], ["c", 3])
const sum = HashMap.reduce(map, 0, (acc, value) => acc + value)

console.log(sum) // 6
```

**Signature**

```ts
declare const reduce: { <Z, V, K>(zero: Z, f: (accumulator: Z, value: V, key: K) => Z): (self: HashMap<K, V>) => Z; <K, V, Z>(self: HashMap<K, V>, zero: Z, f: (accumulator: Z, value: V, key: K) => Z): Z; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L1021)

Since v2.0.0