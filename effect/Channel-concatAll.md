## concatAll

Concat sequentially a channel of channels.

**Signature**

```ts
declare const concatAll: <OutElem, InElem, OutErr, InErr, InDone, Env>(channels: Channel<Channel<OutElem, InElem, OutErr, InErr, any, InDone, Env>, InElem, OutErr, InErr, any, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, any, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L355)

Since v2.0.0