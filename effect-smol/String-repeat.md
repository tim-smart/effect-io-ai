Package: `effect`<br />
Module: `String`<br />

## String.repeat

Repeats the string the specified number of times.

**Example**

```ts
import { pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe("a", String.repeat(5)), "aaaaa")
assert.deepStrictEqual(pipe("hello", String.repeat(3)), "hellohellohello")
```

**Signature**

```ts
declare const repeat: (count: number) => (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L745)

Since v2.0.0