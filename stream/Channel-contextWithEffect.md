# contextWithEffect

Accesses the context of the channel in the context of an effect.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const contextWithEffect: <Env, Env1, OutErr, OutDone>(
  f: (env: Context.Context<Env>) => Effect.Effect<Env1, OutErr, OutDone>
) => Channel<Env | Env1, unknown, unknown, unknown, OutErr, never, OutDone>
```
