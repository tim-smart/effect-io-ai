# when

Returns the specified stream if the given condition is satisfied, otherwise
returns an empty stream.

To import and use `when` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.when
```

**Signature**

```ts
export declare const when: {
  (test: LazyArg<boolean>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(self: Stream<A, E, R>, test: LazyArg<boolean>): Stream<A, E, R>
}
```
