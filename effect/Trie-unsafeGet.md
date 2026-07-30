Package: `effect`<br />
Module: `Trie`<br />

## Trie.unsafeGet

Unsafely lookup the value for the specified key in the `Trie`.

`unsafeGet` will throw if the key is not found. Use `get` instead to safely
get a value from the `Trie`.

**Example**

```ts
import * as assert from "node:assert"
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("call", 0),
  Trie.insert("me", 1)
)

assert.throws(() => Trie.unsafeGet(trie, "mae"))
```

**Signature**

```ts
declare const unsafeGet: { (key: string): <V>(self: Trie<V>) => V; <V>(self: Trie<V>, key: string): V; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L503)

Since v2.0.0