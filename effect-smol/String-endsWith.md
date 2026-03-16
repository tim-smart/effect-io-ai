Package: `effect`<br />
Module: `String`<br />

## String.endsWith

Returns `true` if the string ends with the specified search string.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("hello world", String.endsWith("world")), true)
assert.deepStrictEqual(pipe("hello world", String.endsWith("hello")), false)
```

**Signature**

```ts
declare const endsWith: (searchString: string, position?: number) => (self: string) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L468)

Since v2.0.0