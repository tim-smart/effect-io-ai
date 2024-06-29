# traverseTap

Given a function which returns a `F` effect, thread this effect
through the running of this function on all the values in `T`,
returning an `T<A>` in a `F` context, ignoring the values
returned by the provided function.

To import and use `traverseTap` from the "Traversable" module:

```ts
import * as Traversable from "@effect/typeclass/Traversable"
// Can be accessed like this
Traversable.traverseTap
```

**Signature**

```ts
export declare const traverseTap: <T extends TypeLambda>(
  T: Traversable<T>
) => <F extends TypeLambda>(
  F: Applicative<F>
) => {
  <A, R, O, E, B>(
    f: (a: A) => Kind<F, R, O, E, B>
  ): <TR, TO, TE>(self: Kind<T, TR, TO, TE, A>) => Kind<F, R, O, E, Kind<T, TR, TO, TE, A>>
  <TR, TO, TE, A, R, O, E, B>(
    self: Kind<T, TR, TO, TE, A>,
    f: (a: A) => Kind<F, R, O, E, B>
  ): Kind<F, R, O, E, Kind<T, TR, TO, TE, A>>
}
```
