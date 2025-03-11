## SK

The SK combinator, also known as the "S-K combinator" or "S-combinator", is a fundamental combinator in the
lambda calculus and the SKI combinator calculus.

This function is useful for discarding the first argument passed to it and returning the second argument.

**Example**

```ts
import * as assert from "node:assert"
import { SK } from "effect/Function";

assert.deepStrictEqual(SK(0, "hello"), "hello")
```

**Signature**

```ts
declare const SK: <A, B>(_: A, b: B) => B
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L1201)

Since v2.0.0