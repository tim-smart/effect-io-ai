Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.empty

Creates an empty MutableHashSet.

**When to use**

Use to create a fresh mutable set before adding values over time.

**Details**

Each call returns a new empty set backed by an empty `MutableHashMap`.

**Example** (Creating an empty set)

```ts
import { MutableHashSet } from "effect"

const set = MutableHashSet.empty<string>()

// Add some values
MutableHashSet.add(set, "apple")
MutableHashSet.add(set, "banana")
MutableHashSet.add(set, "apple") // Duplicate, no effect

console.log(MutableHashSet.size(set)) // 2
console.log(Array.from(set)) // ["apple", "banana"]
```

**See**

- `make` for creating a set from explicit values
- `fromIterable` for creating a set from an iterable of values
- `clear` for emptying an existing mutable set

**Signature**

```ts
declare const empty: <K = never>() => MutableHashSet<K>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashSet.ts#L214)

Since v2.0.0