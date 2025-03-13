Package: `effect`<br />
Module: `Function`<br />

## Function.compose

Composes two functions, `ab` and `bc` into a single function that takes in an argument `a` of type `A` and returns a result of type `C`.
The result is obtained by first applying the `ab` function to `a` and then applying the `bc` function to the result of `ab`.

**Example**

```ts
import * as assert from "node:assert"
import { compose } from "effect/Function"

const increment = (n: number) => n + 1;
const square = (n: number) => n * n;

assert.strictEqual(compose(increment, square)(2), 9);
```

**Signature**

```ts
declare const compose: { <B, C>(bc: (b: B) => C): <A>(self: (a: A) => B) => (a: A) => C; <A, B, C>(self: (a: A) => B, bc: (b: B) => C): (a: A) => C; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L386)

Since v2.0.0