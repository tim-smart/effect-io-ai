Package: `effect`<br />
Module: `Function`<br />

## Function.coerceUnsafe

Casts the result to the specified type.

**Example**

```ts
import { coerceUnsafe, identity } from "effect/Function"
import * as assert from "node:assert"

assert.deepStrictEqual(coerceUnsafe, identity)
```

**Signature**

```ts
declare const coerceUnsafe: <A, B>(a: A) => B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L264)

Since v2.0.0