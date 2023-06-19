# replicate

Return a `NonEmptyArray` containing a value repeated the specified number of times.

**Note**. `n` is normalized to an integer >= 1.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Example**

```ts
import { replicate } from '@effect/data/ReadonlyArray'

assert.deepStrictEqual(replicate('a', 3), ['a', 'a', 'a'])
```

**Signature**

```ts
export declare const replicate: { (n: number): <A>(a: A) => [A, ...A[]]; <A>(a: A, n: number): [A, ...A[]] }
```
