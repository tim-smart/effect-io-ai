Package: `effect`<br />
Module: `String`<br />

## String.toUpperCase

Converts a string to uppercase.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("a", String.toUpperCase), "A")
assert.deepStrictEqual(String.toUpperCase("hello"), "HELLO")
```

**Signature**

```ts
declare const toUpperCase: <S extends string>(self: S) => Uppercase<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L147)

Since v2.0.0