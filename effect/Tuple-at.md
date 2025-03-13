Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.at

Retrieves the element at a specified index from a tuple.

**Example**

```ts
import * as assert from "node:assert"
import { Tuple } from "effect"

assert.deepStrictEqual(Tuple.at([1, 'hello', true], 1), 'hello')
```

**Signature**

```ts
declare const at: { <N extends number>(index: N): <A extends ReadonlyArray<unknown>>(self: A) => A[N]; <A extends ReadonlyArray<unknown>, N extends number>(self: A, index: N): A[N]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L249)

Since v3.4.0