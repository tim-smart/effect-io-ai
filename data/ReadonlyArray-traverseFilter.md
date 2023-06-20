# traverseFilter

Filter values inside a context.

To import and use `traverseFilter` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.traverseFilter
```

**Signature**

```ts
export declare const traverseFilter: <F extends TypeLambda>(
  F: applicative.Applicative<F>
) => {
  <B extends A, R, O, E, A = B>(predicate: (a: A) => Kind<F, R, O, E, boolean>): (
    self: readonly B[]
  ) => Kind<F, R, O, E, B[]>
  <B extends A, R, O, E, A = B>(self: readonly B[], predicate: (a: A) => Kind<F, R, O, E, boolean>): Kind<
    F,
    R,
    O,
    E,
    B[]
  >
}
```
