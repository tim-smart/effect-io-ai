Package: `effect`<br />
Module: `Trie`<br />

## Trie.longestPrefixOf

Returns the longest key/value in the `Trie`
that is a prefix of that `key` if it exists, `None` otherwise.

**Example**

```ts
import * as assert from "node:assert"
import { Trie, Option } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1),
  Trie.insert("she", 2)
)

assert.deepStrictEqual(Trie.longestPrefixOf(trie, "sell"), Option.none())
assert.deepStrictEqual(Trie.longestPrefixOf(trie, "sells"), Option.some(["sells", 1]))
assert.deepStrictEqual(Trie.longestPrefixOf(trie, "shell"), Option.some(["she", 2]))
assert.deepStrictEqual(Trie.longestPrefixOf(trie, "shellsort"), Option.some(["shells", 0]))
```

**Signature**

```ts
declare const longestPrefixOf: { (key: string): <V>(self: Trie<V>) => Option<[string, V]>; <V>(self: Trie<V>, key: string): Option<[string, V]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L369)

Since v2.0.0