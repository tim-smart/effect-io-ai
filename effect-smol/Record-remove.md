Package: `effect`<br />
Module: `Record`<br />

## Record.remove

If the given key exists in the record, returns a new record with the key removed.
If the key does not exist, returns a shallow copy of the original record.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Record.remove({ a: 1, b: 2 }, "a"), { b: 2 })
```

**Signature**

```ts
declare const remove: { <K extends string | symbol, X extends K>(key: X): <A>(self: ReadonlyRecord<K, A>) => Record<Exclude<K, X>, A>; <K extends string | symbol, A, X extends K>(self: ReadonlyRecord<K, A>, key: X): Record<Exclude<K, X>, A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L503)

Since v2.0.0