# splitNonEmptyAt

Splits a `NonEmptyReadonlyArray` into two pieces, the first piece has max `n` elements.

To import and use `splitNonEmptyAt` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.splitNonEmptyAt
```

**Signature**

```ts
export declare const splitNonEmptyAt: {
  (n: number): <A>(self: readonly [A, ...A[]]) => [[A, ...A[]], A[]]
  <A>(self: readonly [A, ...A[]], n: number): [[A, ...A[]], A[]]
}
```