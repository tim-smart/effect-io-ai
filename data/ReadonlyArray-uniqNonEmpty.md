# uniqNonEmpty

Remove duplicates from a `NonEmptyReadonlyArray`, keeping the first occurrence of an element.

To import and use `uniqNonEmpty` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.uniqNonEmpty
```

**Signature**

```ts
export declare const uniqNonEmpty: {
  <A>(isEquivalent: (self: A, that: A) => boolean): (self: readonly [A, ...A[]]) => [A, ...A[]]
  <A>(self: readonly [A, ...A[]], isEquivalent: (self: A, that: A) => boolean): [A, ...A[]]
}
```
