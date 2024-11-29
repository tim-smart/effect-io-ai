# productMany

Returns a default `productMany` implementation.

To import and use `productMany` from the "SemiProduct" module:

ts
import \* as SemiProduct from "@effect/typeclass/SemiProduct"
// Can be accessed like this
SemiProduct.productMany
undefined

**Signature**

```ts
export declare const productMany: <F extends TypeLambda>(
  map: Covariant<F>["map"],
  product: SemiProduct<F>["product"]
) => SemiProduct<F>["productMany"]
```
