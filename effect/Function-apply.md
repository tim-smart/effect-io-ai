Package: `effect`<br />
Module: `Function`<br />

## Function.apply

Apply a function to given values.

**Example**

```ts
import * as assert from "node:assert"
import { pipe, apply } from "effect/Function"
import { length } from "effect/String"

assert.deepStrictEqual(pipe(length, apply("hello")), 5)
```

**Signature**

```ts
declare const apply: <A extends ReadonlyArray<unknown>>(...a: A) => <B>(self: (...a: A) => B) => B
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L187)

Since v2.0.0