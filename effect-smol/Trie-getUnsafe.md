Package: `effect`<br />
Module: `Trie`<br />

## Trie.getUnsafe

Unsafely looks up the value for the specified key in the `Trie`.

**Gotchas**

`getUnsafe` throws if the key is not found. Use `get` instead to safely get
a value from the `Trie`.

**Example** (Looking up values unsafely)

```ts
import { Trie } from "effect"
import * as assert from "node:assert"

const trie = Trie.empty<number>().pipe(
  Trie.insert("call", 0),
  Trie.insert("me", 1)
)

assert.throws(() => Trie.getUnsafe(trie, "mae"))
```

**Signature**

```ts
declare const getUnsafe: { (key: string): <V>(self: Trie<V>) => V; <V>(self: Trie<V>, key: string): V; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L625)

Since v4.0.0