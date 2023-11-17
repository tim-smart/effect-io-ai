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
  <A, B>(pf: (a: A) => Option.Option<B>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, B>
  <R, E, A, B>(self: Stream<R, E, A>, pf: (a: A) => Option.Option<B>): Stream<R, E, B>
}
```
