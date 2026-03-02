Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.isEmpty

Checks if the `HashMap` contains any entries.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const emptyMap = HashMap.empty<string, number>()
const nonEmptyMap = HashMap.make(["a", 1])

console.log(HashMap.isEmpty(emptyMap)) // true
console.log(HashMap.isEmpty(nonEmptyMap)) // false
```

**Signature**

```ts
declare const isEmpty: <K, V>(self: HashMap<K, V>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L288)

Since v2.0.0