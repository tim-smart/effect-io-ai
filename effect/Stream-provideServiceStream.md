# provideServiceStream

Provides the stream with the single service it requires. If the stream
requires more than one service use `Stream.provideContext` instead.

To import and use `provideServiceStream` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.provideServiceStream
```

**Signature**

```ts
export declare const provideServiceStream: {
  <I, S, E2, R2>(
    tag: Context.Tag<I, S>,
    stream: Stream<NoInfer<S>, E2, R2>
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | Exclude<R, I>>
  <A, E, R, I, S, E2, R2>(
    self: Stream<A, E, R>,
    tag: Context.Tag<I, S>,
    stream: Stream<NoInfer<S>, E2, R2>
  ): Stream<A, E2 | E, R2 | Exclude<R, I>>
}
```
