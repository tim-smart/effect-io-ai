# makeBy

Return a `NonEmptyArray` of length `n` with element `i` initialized with `f(i)`.

**Note**. `n` is normalized to an integer >= 1.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Example**

```ts
import { makeBy } from '@effect/data/ReadonlyArray'

assert.deepStrictEqual(
  makeBy(5, (n) => n * 2),
  [0, 2, 4, 6, 8]
)
```

**Signature**

```ts
export declare const makeBy: <A>(n: number, f: (i: number) => A) => [A, ...A[]]
```
