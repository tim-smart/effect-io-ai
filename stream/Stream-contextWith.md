# contextWith

Accesses the context of the stream.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const contextWith: <R, A>(f: (env: Context.Context<R>) => A) => Stream<R, never, A>
```
