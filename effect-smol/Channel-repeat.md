Package: `effect`<br />
Module: `Channel`<br />

## Channel.repeat

Repeats this channel according to the provided schedule.

**Signature**

```ts
declare const repeat: { <SO, OutDone, SE, SR>(schedule: Schedule.Schedule<SO, Types.NoInfer<OutDone>, SE, SR> | (($: <SO, SE, SR>(_: Schedule.Schedule<SO, NoInfer<OutDone>, SE, SR>) => Schedule.Schedule<SO, OutDone, SE, SR>) => Schedule.Schedule<SO, Types.NoInfer<OutDone>, SE, SR>)): <OutElem, OutErr, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr | SE, OutDone, InElem, InErr, InDone, Env | SR>) => Channel<OutElem, OutErr | SE, OutDone, InElem, InErr, InDone, Env | SR>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, SO, SE, SR>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, schedule: Schedule.Schedule<SO, OutDone, SE, SR> | (($: <SO, SE, SR>(_: Schedule.Schedule<SO, NoInfer<OutDone>, SE, SR>) => Schedule.Schedule<SO, OutDone, SE, SR>) => Schedule.Schedule<SO, Types.NoInfer<OutDone>, SE, SR>)): Channel<OutElem, OutErr | SE, OutDone, InElem, InErr, InDone, Env | SR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2871)

Since v4.0.0