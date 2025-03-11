## drain

Returns a new channel which reads all the elements from upstream's output
channel and ignores them, then terminates with the upstream result value.

**Signature**

```ts
declare const drain: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<never, InElem, OutErr, InErr, OutDone, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L686)

Since v2.0.0