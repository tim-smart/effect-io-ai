Package: `effect`<br />
Module: `Channel`<br />

## Channel.schedule

Runs a schedule step for each output element while preserving the emitted
elements.

**Details**

The schedule receives each output element as input. Schedule delays are
applied between emitted elements. If the schedule fails, the returned channel
fails. If the schedule finishes, the returned channel completes with the
schedule output.

**Signature**

```ts
declare const schedule: { <SO, OutElem, SE, SR>(schedule: Schedule.Schedule<SO, Types.NoInfer<OutElem>, SE, SR>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr | SE, OutDone, InElem, InErr, InDone, Env | SR>) => Channel<OutElem, OutErr | SE, OutDone | SO, InElem, InErr, InDone, Env | SR>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, SO, SE, SR>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, schedule: Schedule.Schedule<SO, OutElem, SE, SR>): Channel<OutElem, OutErr | SE, OutDone | SO, InElem, InErr, InDone, Env | SR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L3105)

Since v4.0.0