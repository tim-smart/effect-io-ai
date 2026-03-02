Package: `effect`<br />
Module: `String`<br />

## String.padEnd

Pads the string from the end with a given fill string to a specified length.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("a", String.padEnd(5)), "a    ")
assert.deepStrictEqual(pipe("a", String.padEnd(5, "_")), "a____")
```

**Signature**

```ts
declare const padEnd: (maxLength: number, fillString?: string) => (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L709)

Since v2.0.0