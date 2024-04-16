# filterMapWhile

Transforms all elements of the `readonlyArray` for as long as the specified function returns some value

To import and use `filterMapWhile` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.filterMapWhile
```

**Signature**

```ts
export declare const filterMapWhile: {
  <A, B>(f: (a: A, i: number) => Option<B>): (self: Iterable<A>) => B[]
  <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): B[]
}
```
