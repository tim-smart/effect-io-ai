Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.makeBy

Return a `Iterable` with element `i` initialized with `f(i)`.

If the `length` is not specified, the `Iterable` will be infinite.

**Note**. `length` is normalized to an integer >= 1.

**Example**

```ts
import * as assert from "node:assert"
import { makeBy } from "effect/Iterable"

assert.deepStrictEqual(Array.from(makeBy(n => n * 2, { length: 5 })), [0, 2, 4, 6, 8])
```

**Signature**

```ts
declare const makeBy: <A>(f: (i: number) => A, options?: { readonly length?: number; }) => Iterable<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L37)

Since v2.0.0