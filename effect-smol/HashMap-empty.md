Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.empty

Creates a new empty `HashMap`.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map = HashMap.empty<string, number>()
console.log(HashMap.isEmpty(map)) // true
console.log(HashMap.size(map)) // 0
```

**Signature**

```ts
declare const empty: <K = never, V = never>() => HashMap<K, V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L229)

Since v2.0.0