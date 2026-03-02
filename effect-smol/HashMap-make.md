Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.make

Constructs a new `HashMap` from an array of key/value pairs.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const map = HashMap.make(["a", 1], ["b", 2], ["c", 3])
console.log(HashMap.size(map)) // 3
console.log(HashMap.get(map, "b")) // Option.some(2)
```

**Signature**

```ts
declare const make: <Entries extends ReadonlyArray<readonly [any, any]>>(...entries: Entries) => HashMap<Entries[number] extends readonly [infer K, any] ? K : never, Entries[number] extends readonly [any, infer V] ? V : never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L246)

Since v2.0.0