# filterMapWhile

Transforms all elements of the stream for as long as the specified partial
function is defined.

To import and use `filterMapWhile` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.filterMapWhile
```

**Signature**

```ts
export declare const filterMapWhile: {
  <A, X extends A, A2>(pf: (a: X) => Option.Option<A2>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, A2>
  <R, E, A, X extends A, A2>(self: Stream<R, E, A>, pf: (a: X) => Option.Option<A2>): Stream<R, E, A2>
}
```
