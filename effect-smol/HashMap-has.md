Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.has

Checks if the specified key has an entry in the `HashMap`.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map = HashMap.make(["a", 1], ["b", 2])

console.log(HashMap.has(map, "a")) // true
console.log(HashMap.has(map, "c")) // false

// Using pipe syntax
const hasB = HashMap.has("b")(map)
console.log(hasB) // true
```

**Signature**

```ts
declare const has: { <K1 extends K, K>(key: K1): <K, V>(self: HashMap<K, V>) => boolean; <K1 extends K, K, V>(self: HashMap<K, V>, key: K1): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L411)

Since v2.0.0