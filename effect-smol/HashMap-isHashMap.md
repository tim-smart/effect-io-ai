Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.isHashMap

Checks whether a value is a HashMap.

**Example** (Checking HashMap values)

```ts
import { HashMap } from "effect"

const map = HashMap.make(["a", 1], ["b", 2])
const notMap = { a: 1 }

console.log(HashMap.isHashMap(map)) // true
console.log(HashMap.isHashMap(notMap)) // false
console.log(HashMap.isHashMap(null)) // false
```

**Signature**

```ts
declare const isHashMap: { <K, V>(u: Iterable<readonly [K, V]>): u is HashMap<K, V>; (u: unknown): u is HashMap<unknown, unknown>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L288)

Since v2.0.0