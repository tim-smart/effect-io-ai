Package: `effect`<br />
Module: `Number`<br />

## Number.multiplyAll

Takes an `Iterable` of `number`s and returns their multiplication as a single `number`.

**When to use**

Use to multiply all numbers in an iterable.

**Example** (Multiplying an iterable)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.multiplyAll([2, 3, 4]), 24)
```

**See**

- `multiply` for multiplying two numbers
- `ReducerMultiply` for multiplying through APIs that consume a `Reducer`

**Signature**

```ts
declare const multiplyAll: (collection: Iterable<number>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L656)

Since v2.0.0