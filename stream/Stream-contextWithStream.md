# contextWithStream

Accesses the context of the stream in the context of a stream.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const contextWithStream: <R0, R, E, A>(
  f: (env: Context.Context<R0>) => Stream<R, E, A>
) => Stream<R0 | R, E, A>
```
