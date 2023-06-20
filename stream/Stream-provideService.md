# provideService

Provides the stream with the single service it requires. If the stream
requires more than one service use `Stream.provideContext` instead.

To import and use `provideService` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.provideService
```

**Signature**

```ts
export declare const provideService: {
  <T extends Context.Tag<any, any>>(tag: T, resource: Context.Tag.Service<T>): <R, E, A>(
    self: Stream<R, E, A>
  ) => Stream<Exclude<R, Context.Tag.Identifier<T>>, E, A>
  <R, E, A, T extends Context.Tag<any, any>>(self: Stream<R, E, A>, tag: T, resource: Context.Tag.Service<T>): Stream<
    Exclude<R, Context.Tag.Identifier<T>>,
    E,
    A
  >
}
```
