Package: `effect`<br />
Module: `Trie`<br />

## Trie.keys

Returns an `IterableIterator` of the keys within the `Trie`.

The keys are returned in alphabetical order, regardless of insertion order.

**Example**

```ts
import * as Trie from "effect/Trie"
import * as assert from "node:assert"

const trie = Trie.empty<number>().pipe(
  Trie.insert("cab", 0),
  Trie.insert("abc", 1),
  Trie.insert("bca", 2)
)

const result = Array.from(Trie.keys(trie))
assert.deepStrictEqual(result, ["abc", "bca", "cab"])
```

**Signature**

```ts
declare const keys: <V>(self: Trie<V>) => IterableIterator<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L204)

Since v2.0.0