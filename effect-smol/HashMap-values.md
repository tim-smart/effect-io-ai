Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.values

Returns an `IterableIterator` of the values within the `HashMap`.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map = HashMap.make(["a", 1], ["b", 2], ["c", 3])
const values = Array.from(HashMap.values(map))
console.log(values.sort()) // [1, 2, 3]
```

**Signature**

```ts
declare const values: <K, V>(self: HashMap<K, V>) => IterableIterator<V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L526)

Since v2.0.0