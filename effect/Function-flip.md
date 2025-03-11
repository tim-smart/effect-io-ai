## flip

Reverses the order of arguments for a curried function.

**Example**

```ts
import * as assert from "node:assert"
import { flip } from "effect/Function"

const f = (a: number) => (b: string) => a - b.length

assert.deepStrictEqual(flip(f)('aaa')(2), -1)
```

**Signature**

```ts
declare const flip: <A extends Array<unknown>, B extends Array<unknown>, C>(f: (...a: A) => (...b: B) => C) => (...b: B) => (...a: A) => C
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L363)

Since v2.0.0