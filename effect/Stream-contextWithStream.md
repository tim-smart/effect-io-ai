# contextWithStream

Accesses the context of the stream in the context of a stream.

To import and use `contextWithStream` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.contextWithStream
```

**Signature**

```ts
export declare const contextWithStream: <R0, A, E, R>(
  f: (env: Context.Context<R0>) => Stream<A, E, R>
) => Stream<A, E, R0 | R>
```
