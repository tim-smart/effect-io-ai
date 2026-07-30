Package: `effect`<br />
Module: `Channel`<br />

## Channel.contextWithEffect

Accesses the context of the channel in the context of an effect.

**Signature**

```ts
declare const contextWithEffect: <Env, OutDone, OutErr, Env1>(f: (env: Context.Context<Env>) => Effect.Effect<OutDone, OutErr, Env1>) => Channel<never, unknown, OutErr, unknown, OutDone, unknown, Env | Env1>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L795)

Since v2.0.0