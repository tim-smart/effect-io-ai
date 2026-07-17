Package: `effect`<br />
Module: `Channel`<br />

## Channel.provideServiceEffect

Provides a service to the channel after obtaining it from an effect.

**When to use**

Use to supply a channel dependency when constructing the service itself is
effectful or can fail.

**Details**

If the service effect fails, the returned channel fails. The provided service
removes the corresponding service requirement from the returned channel.

**Signature**

```ts
declare const provideServiceEffect: { <I, S, ES, RS>(key: Context.Key<I, S>, service: Effect.Effect<NoInfer<S>, ES, RS>): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | ES, OutDone, InElem, InErr, InDone, Exclude<Env, I> | RS>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, I, S, ES, RS>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, key: Context.Key<I, S>, service: Effect.Effect<NoInfer<S>, ES, RS>): Channel<OutElem, OutErr | ES, OutDone, InElem, InErr, InDone, Exclude<Env, I> | RS>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L7258)

Since v4.0.0