Package: `effect`<br />
Module: `String`<br />

## String.toLowerCase

Converts a string to lowercase.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("A", String.toLowerCase), "a")
assert.deepStrictEqual(String.toLowerCase("HELLO"), "hello")
```

**Signature**

```ts
declare const toLowerCase: <T extends string>(self: T) => Lowercase<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L164)

Since v2.0.0