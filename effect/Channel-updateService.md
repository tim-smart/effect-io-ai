Package: `effect`<br />
Module: `Channel`<br />

## Channel.updateService

Updates a service in the context of this channel.

**Signature**

```ts
declare const updateService: { <I, S>(tag: Context.Tag<I, S>, f: (resource: Types.NoInfer<S>) => Types.NoInfer<S>): <OutElem, OutErr, InErr, OutDone, InDone, R>(self: Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, R>) => Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, I | R>; <OutElem, OutErr, InErr, OutDone, InDone, R, I, S>(self: Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, R>, tag: Context.Tag<I, S>, f: (resource: Types.NoInfer<S>) => Types.NoInfer<S>): Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, I | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2159)

Since v2.0.0