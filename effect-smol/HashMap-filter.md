Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.filter

Filters entries out of a `HashMap` using the specified predicate.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map1 = HashMap.make(["a", 1], ["b", 2], ["c", 3], ["d", 4])
const map2 = HashMap.filter(map1, (value) => value % 2 === 0)

console.log(HashMap.size(map2)) // 2
console.log(HashMap.has(map2, "b")) // true
console.log(HashMap.has(map2, "d")) // true
console.log(HashMap.has(map2, "a")) // false
```

**Signature**

```ts
declare const filter: { <K, A>(f: (a: NoInfer<A>, k: K) => boolean): (self: HashMap<K, A>) => HashMap<K, A>; <K, A>(self: HashMap<K, A>, f: (a: A, k: K) => boolean): HashMap<K, A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L1045)

Since v2.0.0