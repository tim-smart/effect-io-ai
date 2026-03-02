Package: `effect`<br />
Module: `Trie`<br />

## Trie.longestPrefixOf

Returns the longest key/value in the `Trie`
that is a prefix of that `key` if it exists, `None` otherwise.

**Example**

```ts
import * as Trie from "effect/Trie"
import * as assert from "node:assert"

const trie = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1),
  Trie.insert("she", 2)
)

assert.deepStrictEqual(Trie.longestPrefixOf(trie, "sell"), undefined)
assert.deepStrictEqual(Trie.longestPrefixOf(trie, "sells"), ["sells", 1])
assert.deepStrictEqual(Trie.longestPrefixOf(trie, "shell"), ["she", 2])
assert.deepStrictEqual(Trie.longestPrefixOf(trie, "shellsort"), ["shells", 0])
```

**Signature**

```ts
declare const longestPrefixOf: { (key: string): <V>(self: Trie<V>) => [string, V] | undefined; <V>(self: Trie<V>, key: string): [string, V] | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L417)

Since v2.0.0