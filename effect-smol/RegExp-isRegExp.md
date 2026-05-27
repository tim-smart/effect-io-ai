Package: `effect`<br />
Module: `RegExp`<br />

## RegExp.isRegExp

Tests if a value is a `RegExp`.

**When to use**

Use to validate unknown input before treating it as a regular expression.

**Example** (Checking for regular expressions)

```ts
import { RegExp } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(RegExp.isRegExp(/a/), true)
assert.deepStrictEqual(RegExp.isRegExp("a"), false)
```

**Signature**

```ts
declare const isRegExp: (input: unknown) => input is RegExp
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RegExp.ts#L87)

Since v3.9.0