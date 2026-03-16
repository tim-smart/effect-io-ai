Package: `effect`<br />
Module: `String`<br />

## String.toLocaleLowerCase

Converts the string to lowercase according to the specified locale.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

const str = "\u0130"
assert.deepStrictEqual(pipe(str, String.toLocaleLowerCase("tr")), "i")
```

**Signature**

```ts
declare const toLocaleLowerCase: (locale?: string | Array<string>) => (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L800)

Since v2.0.0