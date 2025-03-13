Package: `effect`<br />
Module: `Function`<br />

## Function.LazyArg

A lazy argument.

**Example**

```ts
import * as assert from "node:assert"
import { LazyArg, constant } from "effect/Function"

const constNull: LazyArg<null> = constant(null)
```

**Signature**

```ts
export interface LazyArg<A> {
  (): A
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L181)

Since v2.0.0