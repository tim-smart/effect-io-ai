Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.fromIterable

Creates a new `HashMap` from an iterable collection of key/value pairs.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const entries = [["a", 1], ["b", 2], ["c", 3]] as const
const map = HashMap.fromIterable(entries)
console.log(HashMap.size(map)) // 3
console.log(HashMap.get(map, "a")) // Option.some(1)
```

**Signature**

```ts
declare const fromIterable: <K, V>(entries: Iterable<readonly [K, V]>) => HashMap<K, V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L269)

Since v2.0.0