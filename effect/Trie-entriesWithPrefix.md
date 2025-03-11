## entriesWithPrefix

Returns an `IterableIterator` of the entries within the `Trie`
that have `prefix` as prefix (`prefix` included if it exists).

**Example**

```ts
import * as assert from "node:assert"
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("she", 0),
  Trie.insert("shells", 1),
  Trie.insert("sea", 2),
  Trie.insert("shore", 3)
)

const result = Array.from(Trie.entriesWithPrefix(trie, "she"))
assert.deepStrictEqual(result, [["she", 0], ["shells", 1]])
```

**Signature**

```ts
declare const entriesWithPrefix: { (prefix: string): <V>(self: Trie<V>) => IterableIterator<[string, V]>; <V>(self: Trie<V>, prefix: string): IterableIterator<[string, V]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L312)

Since v2.0.0