Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNever

A refinement that always returns `false`. The type is narrowed to `never`.

**Example**

```ts
import * as assert from "node:assert"
import { isNever } from "effect/Predicate"

assert.strictEqual(isNever(1), false)
assert.strictEqual(isNever(null), false)
assert.strictEqual(isNever({}), false)
```

**Signature**

```ts
declare const isNever: (input: unknown) => input is never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L533)

Since v2.0.0