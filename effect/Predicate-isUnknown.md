Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isUnknown

A guard that always succeeds.

**Example**

```ts
import * as assert from "node:assert"
import { isUnknown } from "effect/Predicate"

assert.deepStrictEqual(isUnknown(null), true)
assert.deepStrictEqual(isUnknown(undefined), true)

assert.deepStrictEqual(isUnknown({}), true)
assert.deepStrictEqual(isUnknown([]), true)
```

**Signature**

```ts
declare const isUnknown: (input: unknown) => input is unknown
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L431)

Since v2.0.0