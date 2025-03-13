Package: `effect`<br />
Module: `RegExp`<br />

## RegExp.isRegExp

Tests if a value is a `RegExp`.

**Example**

```ts
import * as assert from "node:assert"
import { RegExp } from "effect"

assert.deepStrictEqual(RegExp.isRegExp(/a/), true)
assert.deepStrictEqual(RegExp.isRegExp("a"), false)
```

**Signature**

```ts
declare const isRegExp: (input: unknown) => input is RegExp
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RegExp.ts#L23)

Since v3.9.0