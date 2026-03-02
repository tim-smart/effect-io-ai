Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.every

Checks if all entries in a hashmap meets a specific condition.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map = HashMap.make(["a", 1], ["b", 2], ["c", 3])

console.log(HashMap.every(map, (value) => value > 0)) // true
console.log(HashMap.every(map, (value) => value > 1)) // false
```

**Signature**

```ts
declare const every: { <K, A>(predicate: (a: NoInfer<A>, k: K) => boolean): (self: HashMap<K, A>) => boolean; <K, A>(self: HashMap<K, A>, predicate: (a: A, k: K) => boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L1164)

Since v3.14.0