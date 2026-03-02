Package: `effect`<br />
Module: `String`<br />

## String.capitalize

Capitalizes the first character of a string.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("abc", String.capitalize), "Abc")
assert.deepStrictEqual(String.capitalize("hello"), "Hello")
```

**Signature**

```ts
declare const capitalize: <T extends string>(self: T) => Capitalize<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L180)

Since v2.0.0