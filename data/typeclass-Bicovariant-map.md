# map

Returns a default `map` implementation.

To import and use `map` from the "Bicovariant" module:

```ts
import * as Bicovariant from '@effect/data/typeclass/Bicovariant'

// Can be accessed like this
Bicovariant.map
```

**Signature**

```ts
export declare const map: <F extends TypeLambda>(
  F: Bicovariant<F>
) => {
  <A, B>(f: (a: A) => B): <R, O, E>(self: Kind<F, R, O, E, A>) => Kind<F, R, O, E, B>
  <R, O, E, A, B>(self: Kind<F, R, O, E, A>, f: (a: A) => B): Kind<F, R, O, E, B>
}
```
