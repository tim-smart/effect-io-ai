Package: `effect`<br />
Module: `Number`<br />

## Number.sumAll

Takes an `Iterable` of `number`s and returns their sum as a single `number`.

**When to use**

Use to sum all numbers in an iterable.

**Example** (Summing an iterable)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.sumAll([2, 3, 4]), 9)
```

**See**

- `sum` for adding two numbers
- `ReducerSum` for summing through APIs that consume a `Reducer`

**Signature**

```ts
declare const sumAll: (collection: Iterable<number>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L581)

Since v2.0.0