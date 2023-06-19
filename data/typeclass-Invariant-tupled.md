# tupled

Convert a value in a singleton array in a given effect.

Part of the `Invariant` module, imported from `@effect/data/typeclass/Invariant`.

**Signature**

```ts
export declare const tupled: <F extends TypeLambda>(
  F: Invariant<F>
) => <R, O, E, A>(self: Kind<F, R, O, E, A>) => Kind<F, R, O, E, [A]>
```
