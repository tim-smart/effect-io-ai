Package: `effect`<br />
Module: `Function`<br />

## Function.identity

The identity function, i.e. A function that returns its input argument.

**Example**

```ts
import { identity } from "effect/Function"
import * as assert from "node:assert"

assert.deepStrictEqual(identity(5), 5)
```

**Signature**

```ts
declare const identity: <A>(a: A) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L225)

Since v2.0.0