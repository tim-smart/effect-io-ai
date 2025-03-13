Package: `effect`<br />
Module: `Trie`<br />

## Trie.modify

Updates the value of the specified key within the `Trie` if it exists.

**Example**

```ts
import * as assert from "node:assert"
import { Trie, Equal, Option } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1),
  Trie.insert("she", 2)
)

assert.deepStrictEqual(trie.pipe(Trie.modify("she", (v) => v + 10), Trie.get("she")), Option.some(12))

assert.equal(Equal.equals(trie.pipe(Trie.modify("me", (v) => v)), trie), true)
```

**Signature**

```ts
declare const modify: { <V1, V>(key: string, f: (v: V) => V1): (self: Trie<V>) => Trie<V1 | V>; <V1, V>(self: Trie<V>, key: string, f: (v: V) => V1): Trie<V | V1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L774)

Since v2.0.0