Package: `effect`<br />
Module: `String`<br />

## String.trimEnd

Removes whitespace from the end of a string.

**Example**

```ts
import { String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(String.trimEnd(" a "), " a")
assert.deepStrictEqual(String.trimEnd("hello world  "), "hello world")
```

**Signature**

```ts
declare const trimEnd: <A extends string>(self: A) => TrimEnd<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L322)

Since v2.0.0