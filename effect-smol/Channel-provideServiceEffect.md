Package: `effect`<br />
Module: `Channel`<br />

## Channel.provideServiceEffect

Evaluates an effect to obtain a service, then provides that service to the
channel.

If the service effect fails, the returned channel fails. The provided service
removes the corresponding service requirement from the returned channel.

**Signature**

```ts
declare const provideServiceEffect: { <I, S, ES, RS>(key: Context.Key<I, S>, service: Effect.Effect<NoInfer<S>, ES, RS>): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | ES, OutDone, InElem, InErr, InDone, Exclude<Env, I> | RS>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, I, S, ES, RS>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, key: Context.Key<I, S>, service: Effect.Effect<NoInfer<S>, ES, RS>): Channel<OutElem, OutErr | ES, OutDone, InElem, InErr, InDone, Exclude<Env, I> | RS>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7006)

Since v4.0.0