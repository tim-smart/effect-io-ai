Package: `effect`<br />
Module: `Trie`<br />

## Trie.Trie

An immutable string-keyed map optimized for prefix lookup. Iteration yields
`[key, value]` pairs in key order, and update operations such as insert and
remove return new `Trie` values.

**Example** (Using a trie for prefix search)

```ts
import { Trie } from "effect"

// Create a trie with string-to-number mappings
const trie: Trie.Trie<number> = Trie.make(
  ["apple", 1],
  ["app", 2],
  ["application", 3],
  ["banana", 4]
)

// Get values by exact key
console.log(Trie.get(trie, "apple")) // Some(1)
console.log(Trie.get(trie, "grape")) // None

// Find all keys with a prefix
console.log(Array.from(Trie.keysWithPrefix(trie, "app")))
// ["app", "apple", "application"]

// Iterate over all entries (sorted alphabetically)
for (const [key, value] of trie) {
  console.log(`${key}: ${value}`)
}
// Output: "app: 2", "apple: 1", "application: 3", "banana: 4"

// Check if key exists
console.log(Trie.has(trie, "app")) // true

// Get size
console.log(Trie.size(trie)) // 4
```

**Signature**

```ts
export interface Trie<in out Value> extends Iterable<[string, Value]>, Equal, Pipeable, Inspectable {
  readonly [TypeId]: {
    readonly _Value: Covariant<Value>
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L64)

Since v2.0.0