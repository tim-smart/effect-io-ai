# makeBy

Return a `Iterable` with element `i` initialized with `f(i)`.

If the `length` is not specified, the `Iterable` will be infinite.

**Note**. `length` is normalized to an integer >= 1.

To import and use `makeBy` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.makeBy
```

**Example**

```ts
import { makeBy } from "effect/Iterable"

assert.deepStrictEqual(Array.from(makeBy((n) => n * 2, { length: 5 })), [0, 2, 4, 6, 8])
```

**Signature**

```ts
export declare const makeBy: <A>(f: (i: number) => A, options?: { readonly length?: number }) => Iterable<A>
```
