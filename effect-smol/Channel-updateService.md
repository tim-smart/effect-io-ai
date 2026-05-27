Package: `effect`<br />
Module: `Channel`<br />

## Channel.updateService

Updates a service in the current context before running the channel.

**Details**

The existing service is read from the context. The updated service is
provided to the channel under the same key.

**Signature**

```ts
declare const updateService: { <I, S>(key: Context.Key<I, S>, f: (service: NoInfer<S>) => S): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env | I>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, I, S>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, service: Context.Key<I, S>, f: (service: NoInfer<S>) => S): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env | I>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7347)

Since v2.0.0