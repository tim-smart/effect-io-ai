Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isReadonlyRecord

A guard that succeeds when the input is a readonly record.

**Example**

```ts
import * as assert from "node:assert"
import { isReadonlyRecord } from "effect/Predicate"

assert.deepStrictEqual(isReadonlyRecord({}), true)
assert.deepStrictEqual(isReadonlyRecord({ a: 1 }), true)

assert.deepStrictEqual(isReadonlyRecord([]), false)
assert.deepStrictEqual(isReadonlyRecord([1, 2, 3]), false)
assert.deepStrictEqual(isReadonlyRecord(null), false)
assert.deepStrictEqual(isReadonlyRecord(undefined), false)
```

**Signature**

```ts
declare const isReadonlyRecord: (input: unknown) => input is { readonly [x: string | symbol]: unknown; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L660)

Since v2.0.0