# provideServiceEffect

Provides the stream with the single service it requires. If the stream
requires more than one service use `Stream.provideContext` instead.

To import and use `provideServiceEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.provideServiceEffect
```

**Signature**

```ts
export declare const provideServiceEffect: {
  <T extends Context.Tag<any, any>, E2, R2>(
    tag: T,
    effect: Effect.Effect<Context.Tag.Service<T>, E2, R2>
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | Exclude<R, Context.Tag.Identifier<T>>>
  <A, E, R, T extends Context.Tag<any, any>, E2, R2>(
    self: Stream<A, E, R>,
    tag: T,
    effect: Effect.Effect<Context.Tag.Service<T>, E2, R2>
  ): Stream<A, E | E2, R2 | Exclude<R, Context.Tag.Identifier<T>>>
}
```
