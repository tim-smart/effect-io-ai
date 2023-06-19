# contextWith

Accesses the context of the channel with the specified function.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const contextWith: <Env, OutDone>(
  f: (env: Context.Context<Env>) => OutDone
) => Channel<Env, unknown, unknown, unknown, never, never, OutDone>
```
