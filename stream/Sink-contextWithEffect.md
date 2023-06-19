# contextWithEffect

Accesses the context of the sink in the context of an effect.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const contextWithEffect: <R, R2, E, Z>(
  f: (context: Context.Context<R>) => Effect.Effect<R2, E, Z>
) => Sink<R | R2, E, unknown, never, Z>
```
