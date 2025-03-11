## isRecord

A guard that succeeds when the input is a record.

**Example**

```ts
import * as assert from "node:assert"
import { isRecord } from "effect/Predicate"

assert.deepStrictEqual(isRecord({}), true)
assert.deepStrictEqual(isRecord({ a: 1 }), true)

assert.deepStrictEqual(isRecord([]), false)
assert.deepStrictEqual(isRecord([1, 2, 3]), false)
assert.deepStrictEqual(isRecord(null), false)
assert.deepStrictEqual(isRecord(undefined), false)
assert.deepStrictEqual(isRecord(() => null), false)
```

**Signature**

```ts
declare const isRecord: (input: unknown) => input is { [x: string | symbol]: unknown; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L637)

Since v2.0.0