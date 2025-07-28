Package: `effect`<br />
Module: `Struct`<br />

## Struct.evolve

Transforms the values of a Struct provided a transformation function for each key.
If no transformation function is provided for a key, it will return the original value for that key.

**Example**

```ts
import * as assert from "node:assert"
import { pipe, Struct } from "effect"

assert.deepStrictEqual(
  pipe(
    { a: 'a', b: 1, c: 3 },
    Struct.evolve({
      a: (a) => a.length,
      b: (b) => b * 2
    })
  ),
  { a: 1, b: 2, c: 3 }
)
```

**Signature**

```ts
declare const evolve: { <O, T>(t: PartialTransform<O, T>): (obj: O) => Transformed<O, T>; <O, T>(obj: O, t: PartialTransform<O, T>): Transformed<O, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Struct.ts#L162)

Since v2.0.0