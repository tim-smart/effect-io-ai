Package: `effect`<br />
Module: `Function`<br />

## Function.apply

Applies a function to a given value.

**When to use**

Use to pass a fixed value into a unary function, especially when the function
is the value flowing through `pipe`.

**Details**

`apply(a)(f)` is equivalent to `f(a)`.

**Example** (Applying an argument to a function)

```ts
import { Function, pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe(String.length, Function.apply("hello")), 5)
```

**See**

- `pipe` for building left-to-right pipelines

**Signature**

```ts
declare const apply: <A>(a: A) => <B>(self: (a: A) => B) => B
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L184)

Since v2.0.0