Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.some

Checks if any entry in a hashmap meets a specific condition.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map = HashMap.make(["a", 1], ["b", 2], ["c", 3])

console.log(HashMap.some(map, (value) => value > 2)) // true
console.log(HashMap.some(map, (value) => value > 5)) // false
```

**Signature**

```ts
declare const some: { <K, A>(predicate: (a: NoInfer<A>, k: K) => boolean): (self: HashMap<K, A>) => boolean; <K, A>(self: HashMap<K, A>, predicate: (a: A, k: K) => boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L1140)

Since v3.13.0