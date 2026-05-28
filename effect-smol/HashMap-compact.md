Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.compact

Filters out `None` values from a `HashMap` of `Options`s.

**Example** (Compacting Option values)

```ts
import { HashMap, Option } from "effect"

const map1 = HashMap.make(
  ["a", Option.some(1)],
  ["b", Option.none()],
  ["c", Option.some(3)]
)
const map2 = HashMap.compact(map1)

console.log(HashMap.size(map2)) // 2
console.log(HashMap.get(map2, "a")) // Option.some(1)
console.log(HashMap.has(map2, "b")) // false
```

**Signature**

```ts
declare const compact: <K, A>(self: HashMap<K, Option<A>>) => HashMap<K, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L1199)

Since v2.0.0