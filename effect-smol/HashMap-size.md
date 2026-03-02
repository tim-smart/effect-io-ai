Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.size

Returns the number of entries within the `HashMap`.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const emptyMap = HashMap.empty<string, number>()
const map = HashMap.make(["a", 1], ["b", 2], ["c", 3])

console.log(HashMap.size(emptyMap)) // 0
console.log(HashMap.size(map)) // 3
```

**Signature**

```ts
declare const size: <K, V>(self: HashMap<K, V>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L644)

Since v2.0.0