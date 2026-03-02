Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.fromIterable

Creates a HashSet from an iterable collection of values.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const fromArray = HashSet.fromIterable(["a", "b", "c", "b", "a"])
console.log(HashSet.size(fromArray)) // 3

const fromSet = HashSet.fromIterable(new Set([1, 2, 3]))
console.log(HashSet.size(fromSet)) // 3

const fromString = HashSet.fromIterable("hello")
console.log(Array.from(fromString)) // ["h", "e", "l", "o"]
```

**Signature**

```ts
declare const fromIterable: <V>(values: Iterable<V>) => HashSet<V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L155)

Since v2.0.0