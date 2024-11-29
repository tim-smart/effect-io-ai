# ofComposition

Returns a default `of` composition.

To import and use `ofComposition` from the "Of" module:

ts
import \* as Of from "@effect/typeclass/Of"
// Can be accessed like this
Of.ofComposition
undefined

**Signature**

```ts
export declare const ofComposition: <F extends TypeLambda, G extends TypeLambda>(
  F: Of<F>,
  G: Of<G>
) => <A>(a: A) => Kind<F, unknown, never, never, Kind<G, unknown, never, never, A>>
```
