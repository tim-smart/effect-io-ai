Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isSet

A refinement that checks if a value is a `Set`.

**Example**

```ts
import * as assert from "node:assert"
import { isSet } from "effect/Predicate"

assert.strictEqual(isSet(new Set([1, 2])), true)
assert.strictEqual(isSet(new Set()), true)

assert.strictEqual(isSet({}), false)
assert.strictEqual(isSet([1, 2]), false)
```

**Signature**

```ts
declare const isSet: (input: unknown) => input is Set<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L295)

Since v2.0.0