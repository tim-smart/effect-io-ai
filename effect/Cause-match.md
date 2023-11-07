# match

Folds the specified cause into a value of type `Z`.

To import and use `match` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.match
```

**Signature**

```ts
export declare const match: {
  <Z, E>(options: {
    readonly onEmpty: Z
    readonly onFail: (error: E) => Z
    readonly onDie: (defect: unknown) => Z
    readonly onInterrupt: (fiberId: FiberId.FiberId) => Z
    readonly onSequential: (left: Z, right: Z) => Z
    readonly onParallel: (left: Z, right: Z) => Z
  }): (self: Cause<E>) => Z
  <Z, E>(
    self: Cause<E>,
    options: {
      readonly onEmpty: Z
      readonly onFail: (error: E) => Z
      readonly onDie: (defect: unknown) => Z
      readonly onInterrupt: (fiberId: FiberId.FiberId) => Z
      readonly onSequential: (left: Z, right: Z) => Z
      readonly onParallel: (left: Z, right: Z) => Z
    }
  ): Z
}
```
