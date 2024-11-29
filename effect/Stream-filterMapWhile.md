# filterMapWhile

Transforms all elements of the stream for as long as the specified partial
function is defined.

To import and use `filterMapWhile` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.filterMapWhile
undefined

**Signature**

```ts
export declare const filterMapWhile: {
  <A, A2>(pf: (a: A) => Option.Option<A2>): <E, R>(self: Stream<A, E, R>) => Stream<A2, E, R>
  <A, E, R, A2>(self: Stream<A, E, R>, pf: (a: A) => Option.Option<A2>): Stream<A2, E, R>
}
```
