Package: `effect`<br />
Module: `Function`<br />

## Function.tupled

Creates a tupled version of this function: instead of `n` arguments, it accepts a single tuple argument.

**When to use**

Use to adapt a multi-argument function so it accepts one tuple argument.

**Example** (Converting arguments to a tuple)

```ts
import { Function } from "effect"
import * as assert from "node:assert"

const sumTupled = Function.tupled((x: number, y: number): number => x + y)

assert.deepStrictEqual(sumTupled([1, 2]), 3)
```

**See**

- `untupled` for adapting a tuple-argument function back to multiple arguments

**Signature**

```ts
declare const tupled: <A extends ReadonlyArray<unknown>, B>(f: (...a: A) => B) => (a: A) => B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L545)

Since v2.0.0