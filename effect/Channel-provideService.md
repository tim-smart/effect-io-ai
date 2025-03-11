## provideService

Provides the effect with the single service it requires. If the effect
requires more than one service use `provideContext` instead.

**Signature**

```ts
declare const provideService: { <I, S>(tag: Context.Tag<I, S>, service: Types.NoInfer<S>): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Exclude<Env, I>>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, I, S>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, tag: Context.Tag<I, S>, service: Types.NoInfer<S>): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Exclude<Env, I>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1815)

Since v2.0.0