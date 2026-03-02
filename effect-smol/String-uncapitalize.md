Package: `effect`<br />
Module: `String`<br />

## String.uncapitalize

Uncapitalizes the first character of a string.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("ABC", String.uncapitalize), "aBC")
assert.deepStrictEqual(String.uncapitalize("Hello"), "hello")
```

**Signature**

```ts
declare const uncapitalize: <T extends string>(self: T) => Uncapitalize<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L201)

Since v2.0.0