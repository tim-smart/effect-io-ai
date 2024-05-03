# valuesWithPrefix

Returns an `IterableIterator` of the values within the `Trie`
that have `prefix` as prefix (`prefix` included if it exists).

To import and use `valuesWithPrefix` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.valuesWithPrefix
```

**Example**

```ts
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("she", 0),
  Trie.insert("shells", 1),
  Trie.insert("sea", 2),
  Trie.insert("shore", 3)
)

const result = Array.from(Trie.valuesWithPrefix(trie, "she"))

// 0: "she", 1: "shells"
assert.deepStrictEqual(result, [0, 1])
```

**Signature**

```ts
export declare const valuesWithPrefix: {
  (prefix: string): <V>(self: Trie<V>) => IterableIterator<V>
  <V>(self: Trie<V>, prefix: string): IterableIterator<V>
}
```
