Package: `effect`<br />
Module: `Trie`<br />

## Trie.keysWithPrefix

Returns an `IterableIterator` of the keys within the `Trie`
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

const result = Array.from(Trie.keysWithPrefix(trie, "she"))
assert.deepStrictEqual(result, ["she", "shells"])
```

**Signature**

```ts
declare const keysWithPrefix: { (prefix: string): <V>(self: Trie<V>) => IterableIterator<string>; <V>(self: Trie<V>, prefix: string): IterableIterator<string>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L254)

Since v2.0.0