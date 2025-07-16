Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isRecord

A refinement that checks if a value is a record (i.e., a plain object).
This check returns `false` for arrays, `null`, and functions.

**Example**

```ts
import * as assert from "node:assert"
import { isRecord } from "effect/Predicate"

assert.strictEqual(isRecord({}), true)
assert.strictEqual(isRecord({ a: 1 }), true)

assert.strictEqual(isRecord([]), false)
assert.strictEqual(isRecord(new Date()), false)
assert.strictEqual(isRecord(null), false)
assert.strictEqual(isRecord(() => null), false)
```

**See**

- isObject

**Signature**

```ts
declare const isRecord: (input: unknown) => input is { [x: string | symbol]: unknown; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L796)

Since v2.0.0