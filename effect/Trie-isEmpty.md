Package: `effect`<br />
Module: `Trie`<br />

## Trie.isEmpty

Checks if the `Trie` contains any entries.

**Example**

```ts
import * as assert from "node:assert"
import { Trie } from "effect"

const trie = Trie.empty<number>()
const trie1 = trie.pipe(Trie.insert("ma", 0))

assert.equal(Trie.isEmpty(trie), true)
assert.equal(Trie.isEmpty(trie1), false)
```

**Signature**

```ts
declare const isEmpty: <V>(self: Trie<V>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L479)

Since v2.0.0