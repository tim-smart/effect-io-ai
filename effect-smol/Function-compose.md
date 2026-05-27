Package: `effect`<br />
Module: `Function`<br />

## Function.compose

Composes two functions, `ab` and `bc` into a single function that takes in an argument `a` of type `A` and returns a result of type `C`.
The result is obtained by first applying the `ab` function to `a` and then applying the `bc` function to the result of `ab`.

**When to use**

Use to compose exactly two unary functions into a reusable unary function.

**Example** (Composing two functions)

```ts
import { Function } from "effect"
import * as assert from "node:assert"

const increment = (n: number) => n + 1
const square = (n: number) => n * n

assert.strictEqual(Function.compose(increment, square)(2), 9)
```

**See**

- `flow` for composing a left-to-right sequence of functions
- `pipe` for applying a value through a left-to-right sequence immediately

**Signature**

```ts
declare const compose: { <B, C>(bc: (b: B) => C): <A>(self: (a: A) => B) => (a: A) => C; <A, B, C>(self: (a: A) => B, bc: (b: B) => C): (a: A) => C; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L524)

Since v2.0.0