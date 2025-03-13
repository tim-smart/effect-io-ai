Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.getFirst

Return the first element of a tuple.

**Example**

```ts
import * as assert from "node:assert"
import { getFirst } from "effect/Tuple"

assert.deepStrictEqual(getFirst(["hello", 42]), "hello")
```

**Signature**

```ts
declare const getFirst: <L, R>(self: readonly [L, R]) => L
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L50)

Since v2.0.0