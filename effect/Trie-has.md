Package: `effect`<br />
Module: `Trie`<br />

## Trie.has

Check if the given key exists in the `Trie`.

**Example**

```ts
import * as assert from "node:assert"
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("call", 0),
  Trie.insert("me", 1),
  Trie.insert("mind", 2),
  Trie.insert("mid", 3)
)

assert.equal(Trie.has(trie, "call"), true)
assert.equal(Trie.has(trie, "me"), true)
assert.equal(Trie.has(trie, "mind"), true)
assert.equal(Trie.has(trie, "mid"), true)
assert.equal(Trie.has(trie, "cale"), false)
assert.equal(Trie.has(trie, "ma"), false)
assert.equal(Trie.has(trie, "midn"), false)
assert.equal(Trie.has(trie, "mea"), false)
```

**Signature**

```ts
declare const has: { (key: string): <V>(self: Trie<V>) => boolean; <V>(self: Trie<V>, key: string): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L456)

Since v2.0.0