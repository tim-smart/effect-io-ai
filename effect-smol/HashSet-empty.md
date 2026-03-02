Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.empty

Creates an empty HashSet.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const set = HashSet.empty<string>()

console.log(HashSet.size(set)) // 0
console.log(HashSet.isEmpty(set)) // true

// Add some values
const withValues = HashSet.add(HashSet.add(set, "hello"), "world")
console.log(HashSet.size(withValues)) // 2
```

**Signature**

```ts
declare const empty: <V = never>() => HashSet<V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L109)

Since v2.0.0