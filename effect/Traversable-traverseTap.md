Package: `@effect/typeclass`<br />
Module: `Traversable`<br />

## Traversable.traverseTap

Given a function which returns a `F` effect, thread this effect
through the running of this function on all the values in `T`,
returning an `T<A>` in a `F` context, ignoring the values
returned by the provided function.

**Signature**

```ts
declare const traverseTap: <T extends TypeLambda>(T: Traversable<T>) => <F extends TypeLambda>(F: Applicative<F>) => { <A, R, O, E, B>(f: (a: A) => Kind<F, R, O, E, B>): <TR, TO, TE>(self: Kind<T, TR, TO, TE, A>) => Kind<F, R, O, E, Kind<T, TR, TO, TE, A>>; <TR, TO, TE, A, R, O, E, B>(self: Kind<T, TR, TO, TE, A>, f: (a: A) => Kind<F, R, O, E, B>): Kind<F, R, O, E, Kind<T, TR, TO, TE, A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Traversable.ts#L61)

Since v0.24.0