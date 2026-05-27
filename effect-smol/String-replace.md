Package: `effect`<br />
Module: `String`<br />

## String.replace

Replaces matches in a string using `String.prototype.replace`.

**Details**

String search values and non-global regular expressions replace the first
match; global regular expressions replace every match.

**Example** (Replacing a substring)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L316)

Since v2.0.0