Package: `effect`<br />
Module: `Record`<br />

## Record.isEmptyRecord

Determine if a record is empty.

**Example**

```ts
import * as assert from "node:assert"
import { isEmptyRecord } from "effect/Record"

assert.deepStrictEqual(isEmptyRecord({}), true);
assert.deepStrictEqual(isEmptyRecord({ a: 3 }), false);
```

**Signature**

```ts
declare const isEmptyRecord: <K extends string, A>(self: Record<K, A>) => self is Record<K, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L81)

Since v2.0.0