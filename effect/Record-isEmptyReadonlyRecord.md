Package: `effect`<br />
Module: `Record`<br />

## Record.isEmptyReadonlyRecord

Determines if a readonly record is empty.

**Example** (Checking for an empty readonly record)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L209)

Since v2.0.0