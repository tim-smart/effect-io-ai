## mapSecond

Transforms the second component of a tuple using a given function.

**Example**

```ts
import * as assert from "node:assert"
import { mapSecond } from "effect/Tuple"

assert.deepStrictEqual(
  mapSecond(["hello", 42], n => n.toString()),
  ["hello", "42"]
)
```

**Signature**

```ts
declare const mapSecond: { <R1, R2>(f: (right: R1) => R2): <L>(self: readonly [L, R1]) => [L, R2]; <L, R1, R2>(self: readonly [L, R1], f: (right: R1) => R2): [L, R2]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L178)

Since v2.0.0