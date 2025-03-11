## isString

Tests if a value is a `string`.

**Example**

```ts
import * as assert from "node:assert"
import { isString } from "effect/Predicate"

assert.deepStrictEqual(isString("a"), true)

assert.deepStrictEqual(isString(1), false)
```

**Signature**

```ts
declare const isString: (input: unknown) => input is string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L226)

Since v2.0.0