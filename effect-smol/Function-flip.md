Package: `effect`<br />
Module: `Function`<br />

## Function.flip

Reverses the order of arguments for a curried function.

**When to use**

Use to adapt a curried function when its argument groups need to be supplied
in the opposite order.

**Example** (Flipping curried arguments)

```ts
import { Function } from "effect"
import * as assert from "node:assert"

const f = (a: number) => (b: string) => a - b.length

assert.deepStrictEqual(Function.flip(f)("aaa")(2), -1)
```

**Signature**

```ts
declare const flip: <A extends Array<unknown>, B extends Array<unknown>, C>(f: (...a: A) => (...b: B) => C) => (...b: B) => (...a: A) => C
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L492)

Since v2.0.0