# intercalateNonEmpty

Places an element in between members of a `NonEmptyReadonlyArray`, then folds the results using the provided `Semigroup`.

To import and use `intercalateNonEmpty` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.intercalateNonEmpty
```

**Signature**

```ts
export declare const intercalateNonEmpty: <A>(S: Semigroup<A>) => {
  (middle: A): (self: readonly [A, ...A[]]) => A
  (self: readonly [A, ...A[]], middle: A): A
}
```
