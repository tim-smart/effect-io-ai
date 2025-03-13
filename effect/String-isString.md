Package: `effect`<br />
Module: `String`<br />

## String.isString

Tests if a value is a `string`.

**Example**

```ts
import * as assert from "node:assert"
import { String } from "effect"

assert.deepStrictEqual(String.isString("a"), true)
assert.deepStrictEqual(String.isString(1), false)
```

**Signature**

```ts
declare const isString: Refinement<unknown, string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L35)

Since v2.0.0