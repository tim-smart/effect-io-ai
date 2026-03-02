Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.keys

Returns an `IterableIterator` of the keys within the `HashMap`.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map = HashMap.make(["a", 1], ["b", 2], ["c", 3])
const keys = Array.from(HashMap.keys(map))
console.log(keys.sort()) // ["a", "b", "c"]
```

**Signature**

```ts
declare const keys: <K, V>(self: HashMap<K, V>) => IterableIterator<K>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L509)

Since v2.0.0