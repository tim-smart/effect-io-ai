Package: `effect`<br />
Module: `Trie`<br />

## Trie.get

Safely lookup the value for the specified key in the `Trie`.

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

assert.deepStrictEqual(Trie.get(trie, "call"), Option.some(0))
assert.deepStrictEqual(Trie.get(trie, "me"), Option.some(1))
assert.deepStrictEqual(Trie.get(trie, "mind"), Option.some(2))
assert.deepStrictEqual(Trie.get(trie, "mid"), Option.some(3))
assert.deepStrictEqual(Trie.get(trie, "cale"), Option.none())
assert.deepStrictEqual(Trie.get(trie, "ma"), Option.none())
assert.deepStrictEqual(Trie.get(trie, "midn"), Option.none())
assert.deepStrictEqual(Trie.get(trie, "mea"), Option.none())
```

**Signature**

```ts
declare const get: { (key: string): <V>(self: Trie<V>) => Option<V>; <V>(self: Trie<V>, key: string): Option<V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L423)

Since v2.0.0