## tupled

Convert a value in a singleton array in a given effect.

**Signature**

```ts
declare const tupled: <F extends TypeLambda>(F: Invariant<F>) => <R, O, E, A>(self: Kind<F, R, O, E, A>) => Kind<F, R, O, E, [A]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Invariant.ts#L68)

Since v0.24.0