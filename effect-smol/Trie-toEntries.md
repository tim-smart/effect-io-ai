Package: `effect`<br />
Module: `Trie`<br />

## Trie.toEntries

Returns an `Array<[string, V]>` of the entries within the `Trie`.

**Details**

Equivalent to `Array.from(Trie.entries(trie))`.

**Example** (Converting entries to an array)

```ts
import { Trie } from "effect"
import * as assert from "node:assert"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L296)

Since v2.0.0