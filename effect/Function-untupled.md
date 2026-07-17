Package: `effect`<br />
Module: `Function`<br />

## Function.untupled

Converts a tupled function back to an uncurried function.

**When to use**

Use to adapt a tuple-argument function so it accepts multiple arguments.

**Example** (Converting a tuple to arguments)

```ts
import { Function } from "effect"
import * as assert from "node:assert"

const getFirst = Function.untupled(<A, B>(tuple: [A, B]): A => tuple[0])

assert.deepStrictEqual(getFirst(1, 2), 1)
```

**See**

- `tupled` for adapting a multi-argument function to one tuple argument

**Signature**

```ts
declare const untupled: <A extends ReadonlyArray<unknown>, B>(f: (a: A) => B) => (...a: A) => B
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L570)

Since v2.0.0