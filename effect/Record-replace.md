## replace

Replace a key's value in a record and return the updated record.
If the key does not exist in the record, a copy of the original record is returned.

**Example**

```ts
import * as assert from "node:assert"
import { Record } from "effect"

assert.deepStrictEqual(Record.replace("a", 3)({ a: 1, b: 2 }), { a: 3, b: 2 });
assert.deepStrictEqual(Record.replace("c", 3)({ a: 1, b: 2 }), { a: 1, b: 2 });
```

**Signature**

```ts
declare const replace: { <K extends string | symbol, B>(key: NoInfer<K>, value: B): <A>(self: ReadonlyRecord<K, A>) => Record<K, A | B>; <K extends string | symbol, A, B>(self: ReadonlyRecord<K, A>, key: NoInfer<K>, value: B): Record<K, A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L972)

Since v2.0.0