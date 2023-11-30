# splitNonEmptyAt

Splits a `NonEmptyReadonlyArray` into two segments, with the first segment containing a maximum of `n` elements.
The value of `n` must be `>= 1`.

To import and use `splitNonEmptyAt` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.splitNonEmptyAt
```

**Signature**

```ts
export declare const splitNonEmptyAt: {
  (n: number): <A>(self: readonly [A, ...A[]]) => [beforeIndex: [A, ...A[]], fromIndex: A[]]
  <A>(self: readonly [A, ...A[]], n: number): [beforeIndex: [A, ...A[]], fromIndex: A[]]
}
```
