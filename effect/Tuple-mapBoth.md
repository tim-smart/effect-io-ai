Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.mapBoth

Transforms both elements of a tuple with two elements using the given functions.

**Example**

```ts
import * as assert from "node:assert"
import { mapBoth } from "effect/Tuple"

assert.deepStrictEqual(
  mapBoth(["hello", 42], { onFirst: s => s.toUpperCase(), onSecond: n => n.toString() }),
  ["HELLO", "42"]
)
```

**Signature**

```ts
declare const mapBoth: { <L1, L2, R1, R2>(options: { readonly onFirst: (e: L1) => L2; readonly onSecond: (a: R1) => R2; }): (self: readonly [L1, R1]) => [L2, R2]; <L1, R1, L2, R2>(self: readonly [L1, R1], options: { readonly onFirst: (e: L1) => L2; readonly onSecond: (a: R1) => R2; }): [L2, R2]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L119)

Since v2.0.0