Package: `effect`<br />
Module: `String`<br />

## String.padStart

Pads the string from the start with a given fill string to a specified length.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("a", String.padStart(5)), "    a")
assert.deepStrictEqual(pipe("a", String.padStart(5, "_")), "____a")
```

**Signature**

```ts
declare const padStart: (maxLength: number, fillString?: string) => (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L722)

Since v2.0.0