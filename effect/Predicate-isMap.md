Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isMap

A refinement that checks if a value is a `Map`.

**Example**

```ts
import * as assert from "node:assert"
import { isMap } from "effect/Predicate"

assert.strictEqual(isMap(new Map()), true)

assert.strictEqual(isMap({}), false)
assert.strictEqual(isMap(new Set()), false)
```

**Signature**

```ts
declare const isMap: (input: unknown) => input is Map<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L314)

Since v2.0.0