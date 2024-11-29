# mapInputContext

Transforms the context being provided to the stream with the specified
function.

To import and use `mapInputContext` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapInputContext
undefined

**Signature**

```ts
export declare const mapInputContext: {
  <R0, R>(f: (env: Context.Context<R0>) => Context.Context<R>): <A, E>(self: Stream<A, E, R>) => Stream<A, E, R0>
  <A, E, R0, R>(self: Stream<A, E, R>, f: (env: Context.Context<R0>) => Context.Context<R>): Stream<A, E, R0>
}
```
