Package: `effect`<br />
Module: `Trie`<br />

## Trie.filterMap

Maps over the entries of the `Trie` using the specified partial function
and filters out `None` values.

**Example**

```ts
import * as assert from "node:assert"
import { Trie, Equal, Option } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1),
  Trie.insert("she", 2)
)

const trieMapV = Trie.empty<number>().pipe(
  Trie.insert("she", 2)
)

const trieMapK = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1)
)

assert.equal(Equal.equals(Trie.filterMap(trie, (v) => v > 1 ? Option.some(v) : Option.none()), trieMapV), true)
assert.equal(
  Equal.equals(Trie.filterMap(trie, (v, k) => k.length > 3 ? Option.some(v) : Option.none()), trieMapK),
  true
)
```

**Signature**

```ts
declare const filterMap: { <A, B>(f: (value: A, key: string) => Option<B>): (self: Trie<A>) => Trie<B>; <A, B>(self: Trie<A>, f: (value: A, key: string) => Option<B>): Trie<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L690)

Since v2.0.0