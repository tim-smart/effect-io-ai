# filterMap

Performs a filter and map in a single step.

To import and use `filterMap` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.filterMap
```

**Signature**

```ts
export declare const filterMap: {
  <A, X extends A, B>(pf: (a: X) => Option.Option<B>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, B>
  <R, E, A, X extends A, B>(self: Stream<R, E, A>, pf: (a: X) => Option.Option<B>): Stream<R, E, B>
}
```
