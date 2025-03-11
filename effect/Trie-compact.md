## compact

Filters out `None` values from a `Trie` of `Options`s.

**Example**

```ts
import * as assert from "node:assert"
import { Trie, Equal, Option } from "effect"

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L720)

Since v2.0.0