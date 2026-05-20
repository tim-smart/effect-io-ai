Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.isEmpty

Checks whether the `HashMap` contains no entries.

**Example** (Checking for empty HashMaps)

```ts
import { HashMap } from "effect"

const emptyMap = HashMap.empty<string, number>()
const nonEmptyMap = HashMap.make(["a", 1])

console.log(HashMap.isEmpty(emptyMap)) // true
console.log(HashMap.isEmpty(nonEmptyMap)) // false
```

**Signature**

```ts
declare const isEmpty: <K, V>(self: HashMap<K, V>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L373)

Since v2.0.0