# mapLeft

Returns a default `mapLeft` implementation.

To import and use `mapLeft` from the "Bicovariant" module:

ts
import \* as Bicovariant from "@effect/typeclass/Bicovariant"
// Can be accessed like this
Bicovariant.mapLeft
undefined

**Signature**

```ts
export declare const mapLeft: <F extends TypeLambda>(
  F: Bicovariant<F>
) => {
  <E, G>(f: (e: E) => G): <R, O, A>(self: Kind<F, R, O, E, A>) => Kind<F, R, O, G, A>
  <R, O, E, A, G>(self: Kind<F, R, O, E, A>, f: (e: E) => G): Kind<F, R, O, G, A>
}
```
