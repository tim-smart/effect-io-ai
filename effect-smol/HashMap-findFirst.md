Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map = HashMap.make(["a", 1], ["b", 2], ["c", 3])
const result = HashMap.findFirst(map, (value) => value > 1)
console.log(result) // [ 'c', 3 ]
```

**Signature**

```ts
declare const findFirst: { <K, A>(predicate: (a: NoInfer<A>, k: K) => boolean): (self: HashMap<K, A>) => [K, A] | undefined; <K, A>(self: HashMap<K, A>, predicate: (a: A, k: K) => boolean): [K, A] | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L1119)

Since v2.0.0