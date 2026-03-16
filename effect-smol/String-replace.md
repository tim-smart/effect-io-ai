Package: `effect`<br />
Module: `String`<br />

## String.replace

Replaces the first occurrence of a substring or pattern in a string.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("abc", String.replace("b", "d")), "adc")
assert.deepStrictEqual(
  pipe("hello world", String.replace("world", "Effect")),
  "hello Effect"
)
```

**Signature**

```ts
declare const replace: (searchValue: string | RegExp, replaceValue: string) => (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L226)

Since v2.0.0