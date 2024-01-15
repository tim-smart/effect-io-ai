# entriesWithPrefix

Returns an `IterableIterator` of the entries within the `Trie`
that have `prefix` as prefix (`prefix` included if it exists).

To import and use `entriesWithPrefix` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.entriesWithPrefix
```

**Example**

```ts
import * as Trie from "effect/Trie"

const trie = Trie.empty<number>().pipe(
  Trie.insert("she", 0),
  Trie.insert("shells", 1),
  Trie.insert("sea", 2),
  Trie.insert("shore", 3)
)

const result = Array.from(Trie.entriesWithPrefix(trie, "she"))
assert.deepStrictEqual(result, [
  ["she", 0],
  ["shells", 1]
])
```

**Signature**

```ts
export declare const entriesWithPrefix: {
  (prefix: string): <V>(self: Trie<V>) => IterableIterator<[string, V]>
  <V>(self: Trie<V>, prefix: string): IterableIterator<[string, V]>
}
```
