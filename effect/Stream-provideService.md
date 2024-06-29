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
  <T extends Context.Tag<any, any>>(
    tag: T,
    resource: Context.Tag.Service<T>
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, Exclude<R, Context.Tag.Identifier<T>>>
  <A, E, R, T extends Context.Tag<any, any>>(
    self: Stream<A, E, R>,
    tag: T,
    resource: Context.Tag.Service<T>
  ): Stream<A, E, Exclude<R, Context.Tag.Identifier<T>>>
}
```
