Package: `effect`<br />
Module: `Trie`<br />

## Trie.toEntries

Returns an `Array<[K, V]>` of the entries within the `Trie`.

Equivalent to `Array.from(Trie.entries(trie))`.

**Example**

```ts
import * as assert from "node:assert"
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("call", 0),
  Trie.insert("me", 1)
)
const result = Trie.toEntries(trie)

assert.deepStrictEqual(result, [["call", 0], ["me", 1]])
```

**Signature**

```ts
declare const toEntries: <V>(self: Trie<V>) => Array<[string, V]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L229)

Since v2.0.0