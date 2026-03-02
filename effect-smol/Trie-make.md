Package: `effect`<br />
Module: `Trie`<br />

## Trie.make

Constructs a new `Trie` from the specified entries (`[string, V]`).

**Example**

```ts
import * as Equal from "effect/Equal"
import * as Trie from "effect/Trie"
import * as assert from "node:assert"

const trie = Trie.make(["ca", 0], ["me", 1])

assert.deepStrictEqual(Array.from(trie), [["ca", 0], ["me", 1]])
assert.equal(
  Equal.equals(Trie.fromIterable([["ca", 0], ["me", 1]]), trie),
  true
)
```

**Signature**

```ts
declare const make: <Entries extends Array<readonly [string, any]>>(...entries: Entries) => Trie<Entries[number] extends readonly [any, infer V] ? V : never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L145)

Since v2.0.0