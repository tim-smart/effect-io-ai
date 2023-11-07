# rotateNonEmpty

Rotate a `NonEmptyReadonlyArray` by `n` steps.

To import and use `rotateNonEmpty` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.rotateNonEmpty
```

**Signature**

```ts
export declare const rotateNonEmpty: {
  (n: number): <A>(self: readonly [A, ...A[]]) => [A, ...A[]]
  <A>(self: readonly [A, ...A[]], n: number): [A, ...A[]]
}
```
