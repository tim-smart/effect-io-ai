Package: `@effect/typeclass`<br />
Module: `Traversable`<br />

## Traversable.sequence

Returns a default `sequence` implementation.

**Signature**

```ts
declare const sequence: <T extends TypeLambda>(T: Traversable<T>) => <F extends TypeLambda>(F: Applicative<F>) => <TR, TO, TE, R, O, E, A>(self: Kind<T, TR, TO, TE, Kind<F, R, O, E, A>>) => Kind<F, R, O, E, Kind<T, TR, TO, TE, A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Traversable.ts#L46)

Since v0.24.0