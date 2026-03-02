Package: `effect`<br />
Module: `Record`<br />

## Record.isEmptyRecord

Determine if a record is empty.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Record.isEmptyRecord({}), true)
assert.deepStrictEqual(Record.isEmptyRecord({ a: 3 }), false)
```

**Signature**

```ts
declare const isEmptyRecord: <K extends string, A>(self: Record<K, A>) => self is Record<K, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L171)

Since v2.0.0