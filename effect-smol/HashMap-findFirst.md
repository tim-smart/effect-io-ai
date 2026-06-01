Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

**Example** (Finding the first matching entry)

```ts
import { HashMap, Option } from "effect"

const map = HashMap.make(["a", 1], ["b", 2], ["c", 3])
const result = HashMap.findFirst(map, (value, key) => key === "b" && value > 1)
console.log(result) // Option.some(["b", 2])
console.log(Option.getOrElse(result, () => ["", 0])) // ["b", 2]
```

**Signature**

```ts
declare const findFirst: { <K, A>(predicate: (a: NoInfer<A>, k: K) => boolean): (self: HashMap<K, A>) => Option<[K, A]>; <K, A>(self: HashMap<K, A>, predicate: (a: A, k: K) => boolean): Option<[K, A]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L1252)

Since v2.0.0