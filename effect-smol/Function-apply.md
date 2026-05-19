Package: `effect`<br />
Module: `Function`<br />

## Function.apply

Apply a function to a given value.

**Example** (Applying an argument to a function)

```ts
import { Function, pipe, String } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(pipe(String.length, Function.apply("hello")), 5)
```

**Signature**

```ts
declare const apply: <A>(a: A) => <B>(self: (a: A) => B) => B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L208)

Since v2.0.0