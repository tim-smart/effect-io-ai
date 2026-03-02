Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.get

Safely lookup the value for the specified key in the `HashMap` using the
internal hashing function.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map = HashMap.make(["a", 1], ["b", 2])

console.log(HashMap.get(map, "a")) // Option.some(1)
console.log(HashMap.get(map, "c")) // Option.none()

// Using pipe syntax
const value = HashMap.get("b")(map)
console.log(value) // Option.some(2)
```

**Signature**

```ts
declare const get: { <K1 extends K, K>(key: K1): <V>(self: HashMap<K, V>) => Option<V>; <K1 extends K, K, V>(self: HashMap<K, V>, key: K1): Option<V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L311)

Since v2.0.0