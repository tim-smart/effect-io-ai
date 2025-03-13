Package: `effect`<br />
Module: `Channel`<br />

## Channel.contextWith

Accesses the context of the channel with the specified function.

**Signature**

```ts
declare const contextWith: <Env, OutDone>(f: (env: Context.Context<Env>) => OutDone) => Channel<never, unknown, never, unknown, OutDone, unknown, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L775)

Since v2.0.0