Package: `effect`<br />
Module: `Record`<br />

## Record.set

Add a new key-value pair or update an existing key's value in a record.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Record.set("a", 5)({ a: 1, b: 2 }), { a: 5, b: 2 })
assert.deepStrictEqual(Record.set("c", 5)({ a: 1, b: 2 }), { a: 1, b: 2, c: 5 })
```

**Signature**

```ts
declare const set: { <K extends string | symbol, K1 extends K | ((string | symbol) & {}), B>(key: K1, value: B): <A>(self: ReadonlyRecord<K, A>) => Record<K | K1, A | B>; <K extends string | symbol, A, K1 extends K | ((string | symbol) & {}), B>(self: ReadonlyRecord<K, A>, key: K1, value: B): Record<K | K1, A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L970)

Since v2.0.0