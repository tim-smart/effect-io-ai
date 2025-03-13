Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.make

Constructs a new tuple from the provided values.

**Example**

```ts
import * as assert from "node:assert"
import { make } from "effect/Tuple"

assert.deepStrictEqual(make(1, 'hello', true), [1, 'hello', true])
```

**Signature**

```ts
declare const make: <A extends ReadonlyArray<any>>(...elements: A) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L34)

Since v2.0.0