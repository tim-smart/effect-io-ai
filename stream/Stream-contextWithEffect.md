# contextWithEffect

Accesses the context of the stream in the context of an effect.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const contextWithEffect: <R0, R, E, A>(
  f: (env: Context.Context<R0>) => Effect.Effect<R, E, A>
) => Stream<R0 | R, E, A>
```
