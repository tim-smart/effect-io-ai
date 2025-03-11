## remove

If the given key exists in the record, returns a new record with the key removed,
otherwise returns a copy of the original record.

**Example**

```ts
import * as assert from "node:assert"
import { remove } from "effect/Record"

assert.deepStrictEqual(remove({ a: 1, b: 2 }, "a"), { b: 2 })
```

**Signature**

```ts
declare const remove: { <K extends string | symbol, X extends K>(key: X): <A>(self: ReadonlyRecord<K, A>) => Record<Exclude<K, X>, A>; <K extends string | symbol, A, X extends K>(self: ReadonlyRecord<K, A>, key: X): Record<Exclude<K, X>, A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L454)

Since v2.0.0