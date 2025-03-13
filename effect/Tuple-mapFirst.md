Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.mapFirst

Transforms the first component of a tuple using a given function.

**Example**

```ts
import * as assert from "node:assert"
import { mapFirst } from "effect/Tuple"

assert.deepStrictEqual(
  mapFirst(["hello", 42], s => s.toUpperCase()),
  ["HELLO", 42]
)
```

**Signature**

```ts
declare const mapFirst: { <L1, L2>(f: (left: L1) => L2): <R>(self: readonly [L1, R]) => [L2, R]; <L1, R, L2>(self: readonly [L1, R], f: (left: L1) => L2): [L2, R]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L156)

Since v2.0.0