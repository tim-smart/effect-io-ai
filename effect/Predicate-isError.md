## isError

A guard that succeeds when the input is an `Error`.

**Example**

```ts
import * as assert from "node:assert"
import { isError } from "effect/Predicate"

assert.deepStrictEqual(isError(new Error()), true)

assert.deepStrictEqual(isError(null), false)
assert.deepStrictEqual(isError({}), false)
```

**Signature**

```ts
declare const isError: (input: unknown) => input is Error
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L556)

Since v2.0.0