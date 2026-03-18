Package: `effect`<br />
Module: `Channel`<br />

## Channel.retry

Returns a new channel that retries this channel according to the specified
schedule whenever it fails.

**Signature**

```ts
declare const retry: { <SO, OutErr, SE, SR>(schedule: Schedule.Schedule<SO, Types.NoInfer<OutErr>, SE, SR> | (($: <SO, SE, SR>(_: Schedule.Schedule<SO, Types.NoInfer<OutErr>, SE, SR>) => Schedule.Schedule<SO, OutErr, SE, SR>) => Schedule.Schedule<SO, Types.NoInfer<OutErr>, SE, SR>)): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr | SE, OutDone, InElem, InErr, InDone, Env | SR>) => Channel<OutElem, OutErr | SE, OutDone, InElem, InErr, InDone, Env | SR>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, SO, SE, SR>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, schedule: Schedule.Schedule<SO, OutErr, SE, SR> | (($: <SO, SE, SR>(_: Schedule.Schedule<SO, Types.NoInfer<OutErr>, SE, SR>) => Schedule.Schedule<SO, OutErr, SE, SR>) => Schedule.Schedule<SO, Types.NoInfer<OutErr>, SE, SR>)): Channel<OutElem, OutErr | SE, OutDone, InElem, InErr, InDone, Env | SR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L5335)

Since v4.0.0