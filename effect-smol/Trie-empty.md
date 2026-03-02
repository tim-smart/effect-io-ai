Package: `effect`<br />
Module: `Trie`<br />

## Trie.empty

Creates an empty `Trie`.

**Example**

```ts
import * as Trie from "effect/Trie"
import * as assert from "node:assert"

const trie = Trie.empty<string>()

assert.equal(Trie.size(trie), 0)
assert.deepStrictEqual(Array.from(trie), [])
```

**Signature**

```ts
declare const empty: <V = never>() => Trie<V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L88)

Since v2.0.0