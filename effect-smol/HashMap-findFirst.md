Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

**Example**

```ts
import * as HashMap from "effect/HashMap"
import * as Option from "effect/Option"

const map = HashMap.make(["a", 1], ["b", 2], ["c", 3])
const result = HashMap.findFirst(map, (value) => value > 1)
console.log(result) // Option.some(["c", 3])
console.log(Option.getOrElse(result, () => ["", 0])) // ["c", 3]
```

**Signature**

```ts
declare const findFirst: { <K, A>(predicate: (a: NoInfer<A>, k: K) => boolean): (self: HashMap<K, A>) => Option<[K, A]>; <K, A>(self: HashMap<K, A>, predicate: (a: A, k: K) => boolean): Option<[K, A]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L1121)

Since v2.0.0