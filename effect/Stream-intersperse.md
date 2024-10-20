# intersperse

Intersperse stream with provided `element`.

To import and use `intersperse` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.intersperse
```

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3, 4, 5).pipe(Stream.intersperse(0))

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// {
//   _id: 'Chunk',
//   values: [
//     1, 0, 2, 0, 3,
//     0, 4, 0, 5
//   ]
// }
```

**Signature**

```ts
export declare const intersperse: {
  <A2>(element: A2): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E, R>
  <A, E, R, A2>(self: Stream<A, E, R>, element: A2): Stream<A | A2, E, R>
}
```
