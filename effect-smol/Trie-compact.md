Package: `effect`<br />
Module: `Trie`<br />

## Trie.compact

Filters out `None` values from a `Trie` of `Options`s.

**Example**

```ts
import * as Equal from "effect/Equal"
import * as Option from "effect/Option"
import * as Trie from "effect/Trie"
import * as assert from "node:assert"

const trie = Trie.empty<Option.Option<number>>().pipe(
  Trie.insert("shells", Option.some(0)),
  Trie.insert("sells", Option.none()),
  Trie.insert("she", Option.some(2))
)

const trieMapV = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("she", 2)
)

assert.equal(Equal.equals(Trie.compact(trie), trieMapV), true)
```

**Signature**

```ts
declare const compact: <A>(self: Trie<Option<A>>) => Trie<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L791)

Since v2.0.0