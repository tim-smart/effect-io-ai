# reduce

Folds over the elements of the list using the specified function, using the
specified initial value.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const reduce: {
  <Z, A>(zero: Z, f: (b: Z, a: A) => Z): (self: List<A>) => Z
  <A, Z>(self: List<A>, zero: Z, f: (b: Z, a: A) => Z): Z
}
```
