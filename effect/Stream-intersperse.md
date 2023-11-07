# intersperse

Intersperse stream with provided `element`.

To import and use `intersperse` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.intersperse
```

**Signature**

```ts
export declare const intersperse: {
  <A2>(element: A2): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A2 | A>
  <R, E, A, A2>(self: Stream<R, E, A>, element: A2): Stream<R, E, A | A2>
}
```
