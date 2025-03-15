Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNever

A guard that always fails.

**Example**

```ts
import * as assert from "node:assert"
import { isNever } from "effect/Predicate"

assert.deepStrictEqual(isNever(null), false)
assert.deepStrictEqual(isNever(undefined), false)
assert.deepStrictEqual(isNever({}), false)
assert.deepStrictEqual(isNever([]), false)
```

**Signature**

```ts
declare const isNever: (input: unknown) => input is never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L415)

Since v2.0.0