Package: `effect`<br />
Module: `Trie`<br />

## Trie.map

Maps over the entries of the `Trie` using the specified function.

**Example**

```ts
import * as assert from "node:assert"
import { Trie, Equal } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1),
  Trie.insert("she", 2)
)

const trieMapV = Trie.empty<number>().pipe(
  Trie.insert("shells", 1),
  Trie.insert("sells", 2),
  Trie.insert("she", 3)
)

const trieMapK = Trie.empty<number>().pipe(
  Trie.insert("shells", 6),
  Trie.insert("sells", 5),
  Trie.insert("she", 3)
)

assert.equal(Equal.equals(Trie.map(trie, (v) => v + 1), trieMapV), true)
assert.equal(Equal.equals(Trie.map(trie, (_, k) => k.length), trieMapK), true)
```

**Signature**

```ts
declare const map: { <A, V>(f: (value: V, key: string) => A): (self: Trie<V>) => Trie<A>; <V, A>(self: Trie<V>, f: (value: V, key: string) => A): Trie<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L614)

Since v2.0.0