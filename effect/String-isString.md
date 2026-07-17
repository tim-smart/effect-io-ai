Package: `effect`<br />
Module: `String`<br />

## String.isString

Checks whether a value is a `string`.

**Example** (Checking for strings)

```ts
import { String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(String.isString("a"), true)
assert.deepStrictEqual(String.isString(1), false)
```

**Signature**

```ts
declare const isString: Refinement<unknown, string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L60)

Since v2.0.0