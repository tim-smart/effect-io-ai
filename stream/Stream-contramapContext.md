# contramapContext

Transforms the context being provided to the stream with the specified
function.

To import and use `contramapContext` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.contramapContext
```

**Signature**

```ts
export declare const contramapContext: {
  <R0, R>(f: (env: Context.Context<R0>) => Context.Context<R>): <E, A>(self: Stream<R, E, A>) => Stream<R0, E, A>
  <E, A, R0, R>(self: Stream<R, E, A>, f: (env: Context.Context<R0>) => Context.Context<R>): Stream<R0, E, A>
}
```
