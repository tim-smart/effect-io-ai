Package: `effect`<br />
Module: `Function`<br />

## Function.identity

The identity function, i.e. A function that returns its input argument.

**Example**

```ts
import * as assert from "node:assert"
import { identity } from "effect/Function"

assert.deepStrictEqual(identity(5), 5)
```

**Signature**

```ts
declare const identity: <A>(a: A) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L234)

Since v2.0.0