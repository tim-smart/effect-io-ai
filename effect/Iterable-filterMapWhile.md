# filterMapWhile

Transforms all elements of the `Iterable` for as long as the specified function returns some value

To import and use `filterMapWhile` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.filterMapWhile
```

**Signature**

```ts
export declare const filterMapWhile: {
  <A, B>(f: (a: A, i: number) => Option<B>): (self: Iterable<A>) => Iterable<B>
  <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Iterable<B>
}
```
