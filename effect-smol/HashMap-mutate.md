Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.mutate

Mutates the `HashMap` within the context of the provided function.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map1 = HashMap.make(["a", 1])
const map2 = HashMap.mutate(map1, (mutable) => {
  HashMap.set(mutable, "b", 2)
  HashMap.set(mutable, "c", 3)
})
// Returns a new HashMap with mutations applied
```

**Signature**

```ts
declare const mutate: { <K, V>(f: (self: HashMap<K, V>) => void): (self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, f: (self: HashMap<K, V>) => void): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L722)

Since v2.0.0