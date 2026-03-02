Package: `effect`<br />
Module: `Trie`<br />

## Trie.filterMap

Maps over the entries of the `Trie` using the specified filter and keeps
only successful results.

**Example**

```ts
import * as Equal from "effect/Equal"
import * as Result from "effect/Result"
import * as Trie from "effect/Trie"
import * as assert from "node:assert"

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

assert.equal(
  Equal.equals(
    Trie.filterMap(trie, (v) => v > 1 ? Result.succeed(v) : Result.failVoid),
    trieMapV
  ),
  true
)
assert.equal(
  Equal.equals(
    Trie.filterMap(
      trie,
      (v, k) => k.length > 3 ? Result.succeed(v) : Result.failVoid
    ),
    trieMapK
  ),
  true
)
```

**Signature**

```ts
declare const filterMap: { <A, B, X>(f: (input: A, key: string) => Result<B, X>): (self: Trie<A>) => Trie<B>; <A, B, X>(self: Trie<A>, f: (input: A, key: string) => Result<B, X>): Trie<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L759)

Since v2.0.0