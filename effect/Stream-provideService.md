# provideService

Provides the stream with the single service it requires. If the stream
requires more than one service use `Stream.provideContext` instead.

To import and use `provideService` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.provideService
```

**Signature**

```ts
export declare const provideService: {
  <I, S>(tag: Context.Tag<I, S>, resource: NoInfer<S>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, Exclude<R, I>>
  <A, E, R, I, S>(self: Stream<A, E, R>, tag: Context.Tag<I, S>, resource: NoInfer<S>): Stream<A, E, Exclude<R, I>>
}
```
