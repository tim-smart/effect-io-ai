# group

Group equal, consecutive elements of a `NonEmptyReadonlyArray` into `NonEmptyArray`s.

To import and use `group` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.group
```

**Signature**

```ts
export declare const group: {
  <A>(isEquivalent: (self: A, that: A) => boolean): (self: readonly [A, ...A[]]) => [[A, ...A[]], ...[A, ...A[]][]]
  <A>(self: readonly [A, ...A[]], isEquivalent: (self: A, that: A) => boolean): [[A, ...A[]], ...[A, ...A[]][]]
}
```
