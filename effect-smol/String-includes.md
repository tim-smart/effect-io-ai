Package: `effect`<br />
Module: `String`<br />

## String.includes

Returns `true` if `searchString` appears as a substring of `self`, at one or more positions that are
greater than or equal to `position`; otherwise, returns `false`.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("hello world", String.includes("world")), true)
assert.deepStrictEqual(pipe("hello world", String.includes("foo")), false)
```

**Signature**

```ts
declare const includes: (searchString: string, position?: number) => (self: string) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L431)

Since v2.0.0