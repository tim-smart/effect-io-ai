Package: `effect`<br />
Module: `Trie`<br />

## Trie.size

Returns the size of the `Trie` (number of entries in the `Trie`).

**Example**

```ts
import * as Trie from "effect/Trie"
import * as assert from "node:assert"

const trie = Trie.empty<number>().pipe(
  Trie.insert("a", 0),
  Trie.insert("b", 1)
)

assert.equal(Trie.size(trie), 2)
```

**Signature**

```ts
declare const size: <V>(self: Trie<V>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L441)

Since v2.0.0