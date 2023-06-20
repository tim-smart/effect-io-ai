# match

Folds the specified cause into a value of type `Z`.

To import and use `match` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.match
```

**Signature**

```ts
export declare const match: {
  <Z, E>(
    emptyCase: Z,
    failCase: (error: E) => Z,
    dieCase: (defect: unknown) => Z,
    interruptCase: (fiberId: FiberId.FiberId) => Z,
    annotatedCase: (value: Z, annotation: unknown) => Z,
    sequentialCase: (left: Z, right: Z) => Z,
    parallelCase: (left: Z, right: Z) => Z
  ): (self: Cause<E>) => Z
  <Z, E>(
    self: Cause<E>,
    emptyCase: Z,
    failCase: (error: E) => Z,
    dieCase: (defect: unknown) => Z,
    interruptCase: (fiberId: FiberId.FiberId) => Z,
    annotatedCase: (value: Z, annotation: unknown) => Z,
    sequentialCase: (left: Z, right: Z) => Z,
    parallelCase: (left: Z, right: Z) => Z
  ): Z
}
```
