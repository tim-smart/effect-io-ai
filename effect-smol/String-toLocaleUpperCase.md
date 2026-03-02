Package: `effect`<br />
Module: `String`<br />

## String.toLocaleUpperCase

Converts the string to uppercase according to the specified locale.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

const str = "i\u0307"
assert.deepStrictEqual(pipe(str, String.toLocaleUpperCase("lt-LT")), "I")
```

**Signature**

```ts
declare const toLocaleUpperCase: (locale?: string | Array<string>) => (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L825)

Since v2.0.0