Package: `effect`<br />
Module: `RegExp`<br />

## RegExp.escape

Escapes special characters in a regular expression pattern.

**Example**

```ts
import { RegExp } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(RegExp.escape("a*b"), "a\\*b")
```

**Signature**

```ts
declare const escape: (string: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RegExp.ts#L56)

Since v2.0.0