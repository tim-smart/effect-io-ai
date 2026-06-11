Package: `effect`<br />
Module: `Channel`<br />

## Channel.runIntoQueueArray

Runs a channel that emits non-empty arrays and offers each array element into
a queue.

**Details**

When the channel completes, the queue is ended. When the channel fails, the
queue is failed with the channel's cause. The returned effect itself
completes with `void`.

**Signature**

```ts
declare const runIntoQueueArray: { <OutElem, OutErr>(queue: Queue.Queue<OutElem, OutErr | Cause.Done>): <OutDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<void, never, Env>; <OutElem, OutErr, OutDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, unknown, unknown, unknown, Env>, queue: Queue.Queue<OutElem, OutErr | Cause.Done>): Effect.Effect<void, never, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L8162)

Since v4.0.0