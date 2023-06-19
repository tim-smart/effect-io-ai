# reduceRight

Folds over the elements of the list using the specified function, beginning
with the last element of the list, using the specified initial value.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const reduceRight: {
  <Z, A>(zero: Z, f: (accumulator: Z, value: A) => Z): (self: List<A>) => Z
  <Z, A>(self: List<A>, zero: Z, f: (accumulator: Z, value: A) => Z): Z
}
```
