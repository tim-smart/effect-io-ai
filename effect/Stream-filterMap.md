# filterMap

Performs a filter and map in a single step.

To import and use `filterMap` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.filterMap
```

**Signature**

```ts
export declare const filterMap: {
  <A, B>(pf: (a: A) => Option.Option<B>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>
  <A, E, R, B>(self: Stream<A, E, R>, pf: (a: A) => Option.Option<B>): Stream<B, E, R>
}
```
