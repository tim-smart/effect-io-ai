# reduce

Folds over the elements of the list using the specified function, using the
specified initial value.

To import and use `reduce` from the "List" module:

ts
import \* as List from "effect/List"
// Can be accessed like this
List.reduce
undefined

**Signature**

```ts
export declare const reduce: {
  <Z, A>(zero: Z, f: (b: Z, a: A) => Z): (self: List<A>) => Z
  <A, Z>(self: List<A>, zero: Z, f: (b: Z, a: A) => Z): Z
}
```
