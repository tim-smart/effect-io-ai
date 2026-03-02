Package: `effect`<br />
Module: `Function`<br />

## Function.SK

The SK combinator, also known as the "S-K combinator" or "S-combinator", is a fundamental combinator in the
lambda calculus and the SKI combinator calculus.

This function is useful for discarding the first argument passed to it and returning the second argument.

**Example**

```ts
import { SK } from "effect/Function"
import * as assert from "node:assert"

assert.deepStrictEqual(SK(0, "hello"), "hello")
```

**Signature**

```ts
declare const SK: <A, B>(_: A, b: B) => B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L1226)

Since v2.0.0