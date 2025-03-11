## forEach

Applies the specified function to the entries of the `Trie`.

**Example**

```ts
import * as assert from "node:assert"
import { Trie } from "effect"

let value = 0

Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1),
  Trie.insert("she", 2),
  Trie.forEach((n, key) => {
    value += n + key.length
  })
)

assert.equal(value, 17)
```

**Signature**

```ts
declare const forEach: { <V>(f: (value: V, key: string) => void): (self: Trie<V>) => void; <V>(self: Trie<V>, f: (value: V, key: string) => void): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L747)

Since v2.0.0