Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNotUndefined

A refinement that checks if a value is not `undefined`.

**Example**

```ts
import * as assert from "node:assert"
import { isNotUndefined } from "effect/Predicate"

assert.strictEqual(isNotUndefined(null), true)
assert.strictEqual(isNotUndefined("value"), true)

assert.strictEqual(isNotUndefined(undefined), false)
```

**Signature**

```ts
declare const isNotUndefined: <A>(input: A) => input is Exclude<A, undefined>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L476)

Since v2.0.0