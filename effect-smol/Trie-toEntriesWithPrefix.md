Package: `effect`<br />
Module: `Trie`<br />

## Trie.toEntriesWithPrefix

Returns an `Array<[string, V]>` of the entries within the `Trie` whose keys
start with `prefix`, including the entry for `prefix` itself when it exists.

**Example** (Converting prefixed entries to an array)

```ts
import { Trie } from "effect"
import * as assert from "node:assert"

const trie = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1),
  Trie.insert("sea", 2),
  Trie.insert("she", 3)
)

const result = Trie.toEntriesWithPrefix(trie, "she")
assert.deepStrictEqual(result, [["she", 3], ["shells", 0]])
```

**Signature**

```ts
declare const toEntriesWithPrefix: { (prefix: string): <V>(self: Trie<V>) => Array<[string, V]>; <V>(self: Trie<V>, prefix: string): Array<[string, V]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L448)

Since v2.0.0