# replicate

Return a `NonEmptyArray` containing a value repeated the specified number of times.

**Note**. `n` is normalized to an integer >= 1.

To import and use `replicate` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.replicate
```

**Example**

```ts
import { replicate } from '@effect/data/ReadonlyArray'

assert.deepStrictEqual(replicate('a', 3), ['a', 'a', 'a'])
```

**Signature**

```ts
export declare const replicate: { (n: number): <A>(a: A) => [A, ...A[]]; <A>(a: A, n: number): [A, ...A[]] }
```
