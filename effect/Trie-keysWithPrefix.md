# keysWithPrefix

Returns an `IterableIterator` of the keys within the `Trie`
that have `prefix` as prefix (`prefix` included if it exists).

To import and use `keysWithPrefix` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.keysWithPrefix
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

const result = Array.from(Trie.keysWithPrefix(trie, "she"))
assert.deepStrictEqual(result, ["she", "shells"])
```

**Signature**

```ts
export declare const keysWithPrefix: {
  (prefix: string): <V>(self: Trie<V>) => IterableIterator<string>
  <V>(self: Trie<V>, prefix: string): IterableIterator<string>
}
```
