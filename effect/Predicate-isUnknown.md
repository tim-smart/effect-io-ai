Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isUnknown

A refinement that always returns `true`. The type is narrowed to `unknown`.

**Example**

```ts
import * as assert from "node:assert"
import { isUnknown } from "effect/Predicate"

assert.strictEqual(isUnknown(1), true)
assert.strictEqual(isUnknown(null), true)
assert.strictEqual(isUnknown({}), true)
```

**Signature**

```ts
declare const isUnknown: (input: unknown) => input is unknown
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L551)

Since v2.0.0