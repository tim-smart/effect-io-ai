Package: `effect`<br />
Module: `Function`<br />

## Function.tupled

Creates a   version of this function: instead of `n` arguments, it accepts a single tuple argument.

**Example**

```ts
import * as assert from "node:assert"
import { tupled } from "effect/Function"

const sumTupled = tupled((x: number, y: number): number => x + y)

assert.deepStrictEqual(sumTupled([1, 2]), 3)
```

**Signature**

```ts
declare const tupled: <A extends ReadonlyArray<unknown>, B>(f: (...a: A) => B) => (a: A) => B
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L418)

Since v2.0.0