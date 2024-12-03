# map

Returns a default `map` implementation.

To import and use `map` from the "Bicovariant" module:

```ts
import * as Bicovariant from "@effect/typeclass/Bicovariant"
// Can be accessed like this
Bicovariant.map
```

**Signature**

```ts
export declare const map: <F extends TypeLambda>(F: Bicovariant<F>) => Covariant<F>["map"]
```
