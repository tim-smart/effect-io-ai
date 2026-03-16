Package: `effect`<br />
Module: `Trie`<br />

## Trie.removeMany

Removes all entries in the `Trie` which have the specified keys.

**Example**

```ts
import * as Equal from "effect/Equal"
import * as Trie from "effect/Trie"
import * as assert from "node:assert"

const trie = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1),
  Trie.insert("she", 2)
)

assert.equal(
  Equal.equals(
    trie.pipe(Trie.removeMany(["she", "sells"])),
    Trie.empty<number>().pipe(Trie.insert("shells", 0))
  ),
  true
)
```

**Signature**

```ts
declare const removeMany: { (keys: Iterable<string>): <V>(self: Trie<V>) => Trie<V>; <V>(self: Trie<V>, keys: Iterable<string>): Trie<V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L886)

Since v2.0.0