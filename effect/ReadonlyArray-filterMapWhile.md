# filterMapWhile

Transforms all elements of the `readonlyArray` for as long as the specified function returns some value

To import and use `filterMapWhile` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.filterMapWhile
```

**Signature**

```ts
export declare const filterMapWhile: {
  <A, B>(f: (a: A) => Option<B>): (self: Iterable<A>) => B[]
  <A, B>(self: Iterable<A>, f: (a: A) => Option<B>): B[]
}
```
