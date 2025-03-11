## remove

Remove the entry for the specified key in the `Trie`.

**Example**

```ts
import * as assert from "node:assert"
import { Trie, Option } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("call", 0),
  Trie.insert("me", 1),
  Trie.insert("mind", 2),
  Trie.insert("mid", 3)
)

const trie1 = trie.pipe(Trie.remove("call"))
const trie2 = trie1.pipe(Trie.remove("mea"))

assert.deepStrictEqual(Trie.get(trie, "call"), Option.some(0))
assert.deepStrictEqual(Trie.get(trie1, "call"), Option.none())
assert.deepStrictEqual(Trie.get(trie2, "call"), Option.none())
```

**Signature**

```ts
declare const remove: { (key: string): <V>(self: Trie<V>) => Trie<V>; <V>(self: Trie<V>, key: string): Trie<V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L534)

Since v2.0.0