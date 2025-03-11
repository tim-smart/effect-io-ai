## insert

Insert a new entry in the `Trie`.

**Example**

```ts
import * as assert from "node:assert"
import { Trie } from "effect"

const trie1 = Trie.empty<number>().pipe(
  Trie.insert("call", 0)
)
const trie2 = trie1.pipe(Trie.insert("me", 1))
const trie3 = trie2.pipe(Trie.insert("mind", 2))
const trie4 = trie3.pipe(Trie.insert("mid", 3))

assert.deepStrictEqual(Array.from(trie1), [["call", 0]])
assert.deepStrictEqual(Array.from(trie2), [["call", 0], ["me", 1]])
assert.deepStrictEqual(Array.from(trie3), [["call", 0], ["me", 1], ["mind", 2]])
assert.deepStrictEqual(Array.from(trie4), [["call", 0], ["me", 1], ["mid", 3], ["mind", 2]])
```

**Signature**

```ts
declare const insert: { <V1>(key: string, value: V1): <V>(self: Trie<V>) => Trie<V | V1>; <V1, V>(self: Trie<V>, key: string, value: V1): Trie<V | V1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L128)

Since v2.0.0