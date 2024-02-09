# intersperse

Intersperse stream with provided `element`.

To import and use `intersperse` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.intersperse
```

**Signature**

```ts
export declare const intersperse: {
  <A2>(element: A2): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E, R>
  <R, E, A, A2>(self: Stream<A, E, R>, element: A2): Stream<A | A2, E, R>
}
```
