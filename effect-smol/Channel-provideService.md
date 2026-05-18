Package: `effect`<br />
Module: `Channel`<br />

## Channel.provideService

Provides a concrete service for a context key, removing that service
requirement from the returned channel.

**Signature**

```ts
declare const provideService: { <I, S>(key: Context.Key<I, S>, service: NoInfer<S>): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Exclude<Env, I>>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, I, S>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, key: Context.Key<I, S>, service: NoInfer<S>): Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Exclude<Env, I>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6972)

Since v4.0.0