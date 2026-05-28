Package: `effect`<br />
Module: `Function`<br />

## Function.identity

Returns its input argument unchanged.

**When to use**

Use to return a value unchanged where a function is required.

**Example** (Returning the same value)

```ts
import { identity } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(identity(5), 5)
```

**Signature**

```ts
declare const identity: <A>(a: A) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L285)

Since v2.0.0