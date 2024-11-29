# reduceRight

Folds over the elements of the list using the specified function, beginning
with the last element of the list, using the specified initial value.

To import and use `reduceRight` from the "List" module:

ts
import \* as List from "effect/List"
// Can be accessed like this
List.reduceRight
undefined

**Signature**

```ts
export declare const reduceRight: {
  <Z, A>(zero: Z, f: (accumulator: Z, value: A) => Z): (self: List<A>) => Z
  <Z, A>(self: List<A>, zero: Z, f: (accumulator: Z, value: A) => Z): Z
}
```
