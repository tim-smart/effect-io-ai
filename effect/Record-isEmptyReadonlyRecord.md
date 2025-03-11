## isEmptyReadonlyRecord

Determine if a record is empty.

**Example**

```ts
import * as assert from "node:assert"
import { isEmptyReadonlyRecord } from "effect/Record"

assert.deepStrictEqual(isEmptyReadonlyRecord({}), true);
assert.deepStrictEqual(isEmptyReadonlyRecord({ a: 3 }), false);
```

**Signature**

```ts
declare const isEmptyReadonlyRecord: <K extends string, A>(self: ReadonlyRecord<K, A>) => self is ReadonlyRecord<K, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L99)

Since v2.0.0