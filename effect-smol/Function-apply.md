Package: `effect`<br />
Module: `Function`<br />

## Function.apply

Apply a function to a given value.

**Example** (Applying an argument to a function)

```ts
import { apply, pipe } from "effect/Function"
import { length } from "effect/String"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe(length, apply("hello")), 5)
```

**Signature**

```ts
declare const apply: <A>(a: A) => <B>(self: (a: A) => B) => B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L210)

Since v2.0.0