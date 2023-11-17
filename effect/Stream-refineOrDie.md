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
  <E, E2>(pf: (error: E) => Option.Option<E2>): <R, A>(self: Stream<R, E, A>) => Stream<R, E2, A>
  <R, A, E, E2>(self: Stream<R, E, A>, pf: (error: E) => Option.Option<E2>): Stream<R, E2, A>
}
```
