# provideContext

Provides the stream with its required context, which eliminates its
dependency on `R`.

To import and use `provideContext` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.provideContext
undefined

**Signature**

```ts
export declare const provideContext: {
  <R>(context: Context.Context<R>): <A, E>(self: Stream<A, E, R>) => Stream<A, E>
  <A, E, R>(self: Stream<A, E, R>, context: Context.Context<R>): Stream<A, E>
}
```
