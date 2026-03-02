Package: `effect`<br />
Module: `Function`<br />

## Function.tupled

Creates a tupled version of this function: instead of `n` arguments, it accepts a single tuple argument.

**Example**

```ts
import { tupled } from "effect/Function"
import * as assert from "node:assert"

const sumTupled = tupled((x: number, y: number): number => x + y)

assert.deepStrictEqual(sumTupled([1, 2]), 3)
```

**Signature**

```ts
declare const tupled: <A extends ReadonlyArray<unknown>, B>(f: (...a: A) => B) => (a: A) => B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L451)

Since v2.0.0