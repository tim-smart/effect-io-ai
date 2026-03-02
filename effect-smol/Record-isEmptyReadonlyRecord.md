Package: `effect`<br />
Module: `Record`<br />

## Record.isEmptyReadonlyRecord

Determine if a record is empty.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Record.isEmptyReadonlyRecord({}), true)
assert.deepStrictEqual(Record.isEmptyReadonlyRecord({ a: 3 }), false)
```

**Signature**

```ts
declare const isEmptyReadonlyRecord: <K extends string, A>(self: ReadonlyRecord<K, A>) => self is ReadonlyRecord<K, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L189)

Since v2.0.0