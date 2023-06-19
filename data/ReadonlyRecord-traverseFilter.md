# traverseFilter

Filter values inside a context.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

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
