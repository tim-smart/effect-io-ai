# toEntriesWithPrefix

Returns `Array<[K, V]>` of the entries within the `Trie`
that have `prefix` as prefix (`prefix` included if it exists).

To import and use `toEntriesWithPrefix` from the "Trie" module:

ts
import \* as Trie from "effect/Trie"
// Can be accessed like this
Trie.toEntriesWithPrefix
undefined

**Example**

```ts
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1),
  Trie.insert("sea", 2),
  Trie.insert("she", 3)
)

const result = Trie.toEntriesWithPrefix(trie, "she")
assert.deepStrictEqual(result, [
  ["she", 3],
  ["shells", 0]
])
```

**Signature**

```ts
export declare const toEntriesWithPrefix: {
  (prefix: string): <V>(self: Trie<V>) => Array<[string, V]>
  <V>(self: Trie<V>, prefix: string): Array<[string, V]>
}
```
