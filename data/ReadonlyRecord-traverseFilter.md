# traverseFilter

Filter values inside a context.

To import and use `traverseFilter` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from '@effect/data/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.traverseFilter
```

**Signature**

```ts
export declare const traverseFilter: <F extends TypeLambda>(
  F: applicative.Applicative<F>
) => {
  <B extends A, R, O, E, A = B>(predicate: (a: A) => Kind<F, R, O, E, boolean>): (
    self: ReadonlyRecord<B>
  ) => Kind<F, R, O, E, Record<string, B>>
  <B extends A, R, O, E, A = B>(self: ReadonlyRecord<B>, predicate: (a: A) => Kind<F, R, O, E, boolean>): Kind<
    F,
    R,
    O,
    E,
    Record<string, B>
  >
}
```
