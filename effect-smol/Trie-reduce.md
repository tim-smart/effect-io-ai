Package: `effect`<br />
Module: `Trie`<br />

## Trie.reduce

Reduce a state over the entries of the `Trie`.

**Example**

```ts
import * as Trie from "effect/Trie"
import * as assert from "node:assert"

const trie = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1),
  Trie.insert("she", 2)
)

assert.equal(
  trie.pipe(
    Trie.reduce(0, (acc, n) => acc + n)
  ),
  3
)
assert.equal(
  trie.pipe(
    Trie.reduce(10, (acc, n) => acc + n)
  ),
  13
)
assert.equal(
  trie.pipe(
    Trie.reduce("", (acc, _, key) => acc + key)
  ),
  "sellssheshells"
)
```

**Signature**

```ts
declare const reduce: { <Z, V>(zero: Z, f: (accumulator: Z, value: V, key: string) => Z): (self: Trie<V>) => Z; <Z, V>(self: Trie<V>, zero: Z, f: (accumulator: Z, value: V, key: string) => Z): Z; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L630)

Since v2.0.0