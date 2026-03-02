Package: `effect`<br />
Module: `String`<br />

## String.slice

Extracts a section of a string and returns it as a new string.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("abcd", String.slice(1, 3)), "bc")
assert.deepStrictEqual(pipe("hello world", String.slice(0, 5)), "hello")
```

**Signature**

```ts
declare const slice: (start?: number, end?: number) => (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L339)

Since v2.0.0