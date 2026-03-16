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

const none = Trie.longestPrefixOf(trie, "sell")
const some = Trie.longestPrefixOf(trie, "sells")

assert.equal(none._tag, "None")
assert.equal(some._tag, "Some")
if (some._tag === "Some") {
  assert.deepStrictEqual(some.value, ["sells", 1])
}
```

**Signature**

```ts
declare const longestPrefixOf: { (key: string): <V>(self: Trie<V>) => Option<[string, V]>; <V>(self: Trie<V>, key: string): Option<[string, V]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L421)

Since v2.0.0