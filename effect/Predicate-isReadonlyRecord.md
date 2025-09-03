Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isReadonlyRecord

A refinement that checks if a value is a readonly record (i.e., a plain object).
This check returns `false` for arrays, `null`, and functions.

This is an alias for `isRecord`.

**Example**

```ts
import * as assert from "node:assert"
import { isReadonlyRecord } from "effect/Predicate"

assert.strictEqual(isReadonlyRecord({}), true)
assert.strictEqual(isReadonlyRecord({ a: 1 }), true)

assert.strictEqual(isReadonlyRecord([]), false)
assert.strictEqual(isReadonlyRecord(null), false)
```

**Signature**

```ts
declare const isReadonlyRecord: (input: unknown) => input is { readonly [x: string | symbol]: unknown; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L821)

Since v2.0.0