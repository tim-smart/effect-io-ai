## empty

Creates an empty `Trie`.

**Example**

```ts
import * as assert from "node:assert"
import { Trie, Equal } from "effect"

const trie = Trie.empty<string>()

assert.equal(Trie.size(trie), 0)
assert.deepStrictEqual(Array.from(trie), [])
```

**Signature**

```ts
declare const empty: <V = never>() => Trie<V>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L60)

Since v2.0.0