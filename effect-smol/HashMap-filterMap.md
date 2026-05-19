Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.filterMap

Maps over the entries of the `HashMap` using the specified filter and keeps
only successful results.

**Example** (Filtering and mapping Results)

```ts
import { HashMap, Result } from "effect"

const map1 = HashMap.make(["a", 1], ["b", 2], ["c", 3], ["d", 4])
const map2 = HashMap.filterMap(
  map1,
  (value) => value % 2 === 0 ? Result.succeed(value * 2) : Result.failVoid
)

console.log(HashMap.size(map2)) // 2
console.log(HashMap.get(map2, "b")) // Option.some(4)
console.log(HashMap.get(map2, "d")) // Option.some(8)
```

**Signature**

```ts
declare const filterMap: { <A, K, B, X>(f: (input: A, key: K) => Result<B, X>): (self: HashMap<K, A>) => HashMap<K, B>; <K, A, B, X>(self: HashMap<K, A>, f: (input: A, key: K) => Result<B, X>): HashMap<K, B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L1209)

Since v2.0.0