Package: `effect`<br />
Module: `String`<br />

## String.trim

Removes whitespace from both ends of a string.

**Example**

```ts
import { String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(String.trim(" a "), "a")
assert.deepStrictEqual(String.trim("  hello world  "), "hello world")
```

**Signature**

```ts
declare const trim: <A extends string>(self: A) => Trim<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L259)

Since v2.0.0