Package: `effect`<br />
Module: `String`<br />

## String.replaceAll

Replaces all occurrences of a substring or pattern in a string.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("ababb", String.replaceAll("b", "c")), "acacc")
assert.deepStrictEqual(pipe("ababb", String.replaceAll(/ba/g, "cc")), "accbb")
```

**Signature**

```ts
declare const replaceAll: (searchValue: string | RegExp, replaceValue: string) => (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L757)

Since v2.0.0