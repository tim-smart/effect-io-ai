# provideContext

Provides the stream with its required context, which eliminates its
dependency on `R`.

To import and use `provideContext` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.provideContext
```

**Signature**

```ts
export declare const provideContext: {
  <R>(context: Context.Context<R>): <E, A>(self: Stream<R, E, A>) => Stream<never, E, A>
  <E, A, R>(self: Stream<R, E, A>, context: Context.Context<R>): Stream<never, E, A>
}
```
