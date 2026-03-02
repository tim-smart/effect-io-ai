Package: `effect`<br />
Module: `String`<br />

## String.startsWith

Returns `true` if the string starts with the specified search string.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("hello world", String.startsWith("hello")), true)
assert.deepStrictEqual(pipe("hello world", String.startsWith("world")), false)
```

**Signature**

```ts
declare const startsWith: (searchString: string, position?: number) => (self: string) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L449)

Since v2.0.0