Package: `effect`<br />
Module: `Function`<br />

## Function.flip

Reverses the order of arguments for a curried function.

**Example**

```ts
import { flip } from "effect/Function"
import * as assert from "node:assert"

const f = (a: number) => (b: string) => a - b.length

assert.deepStrictEqual(flip(f)("aaa")(2), -1)
```

**Signature**

```ts
declare const flip: <A extends Array<unknown>, B extends Array<unknown>, C>(f: (...a: A) => (...b: B) => C) => (...b: B) => (...a: A) => C
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L384)

Since v2.0.0