Package: `effect`<br />
Module: `String`<br />

## String.length

Returns the JavaScript string length, measured in UTF-16 code units.

**Example** (Getting string length)

```ts
import { String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(String.length("abc"), 3)
```

**Signature**

```ts
declare const length: (self: string) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L437)

Since v2.0.0