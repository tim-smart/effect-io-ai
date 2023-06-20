# intersperseNonEmpty

Places an element in between members of a `NonEmptyReadonlyArray`

To import and use `intersperseNonEmpty` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.intersperseNonEmpty
```

**Signature**

```ts
export declare const intersperseNonEmpty: {
  <B>(middle: B): <A>(self: readonly [A, ...A[]]) => [B | A, ...(B | A)[]]
  <A, B>(self: readonly [A, ...A[]], middle: B): [A | B, ...(A | B)[]]
}
```
