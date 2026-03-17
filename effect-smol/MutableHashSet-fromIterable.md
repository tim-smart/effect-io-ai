Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.fromIterable

Creates a MutableHashSet from an iterable collection of values.
Duplicates are automatically removed.

**Example**

```ts
import { MutableHashSet } from "effect"

const values = ["apple", "banana", "apple", "cherry", "banana"]
const set = MutableHashSet.fromIterable(values)

console.log(MutableHashSet.size(set)) // 3
console.log(Array.from(set)) // ["apple", "banana", "cherry"]

// Works with any iterable
const fromSet = MutableHashSet.fromIterable(new Set([1, 2, 3]))
console.log(MutableHashSet.size(fromSet)) // 3

// From string characters
const fromString = MutableHashSet.fromIterable("hello")
console.log(Array.from(fromString)) // ["h", "e", "l", "o"]
```

**Signature**

```ts
declare const fromIterable: <K = never>(keys: Iterable<K>) => MutableHashSet<K>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashSet.ts#L157)

Since v2.0.0