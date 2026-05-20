Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.size

Returns the number of values in the HashSet.

**Example** (Getting the HashSet size)

```ts
import { HashSet } from "effect"

const empty = HashSet.empty<string>()
console.log(HashSet.size(empty)) // 0

const small = HashSet.make("a", "b")
console.log(HashSet.size(small)) // 2

const withDuplicates = HashSet.fromIterable(["x", "y", "z", "x", "y"])
console.log(HashSet.size(withDuplicates)) // 3
```

**Signature**

```ts
declare const size: <V>(self: HashSet<V>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L354)

Since v2.0.0