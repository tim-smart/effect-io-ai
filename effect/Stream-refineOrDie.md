# refineOrDie

Keeps some of the errors, and terminates the fiber with the rest

To import and use `refineOrDie` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.refineOrDie
```

**Signature**

```ts
export declare const refineOrDie: {
  <E, E2>(pf: (error: E) => Option.Option<E2>): <A, R>(self: Stream<A, E, R>) => Stream<A, E2, R>
  <A, E, R, E2>(self: Stream<A, E, R>, pf: (error: E) => Option.Option<E2>): Stream<A, E2, R>
}
```
