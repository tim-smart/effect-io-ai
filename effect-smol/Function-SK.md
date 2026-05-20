Package: `effect`<br />
Module: `Function`<br />

## Function.SK

The SK combinator, also known as the "S-K combinator" or "S-combinator", is
a fundamental combinator in the lambda calculus and the SKI combinator
calculus.

**When to use**

Use `SK` to discard the first argument and return the second argument.

**Example** (Discarding the first argument)

```ts
import { Function } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Function.SK(0, "hello"), "hello")
```

**Signature**

```ts
declare const SK: <A, B>(_: A, b: B) => B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L1313)

Since v2.0.0