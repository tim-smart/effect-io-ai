Package: `effect`<br />
Module: `Channel`<br />

## Channel.runIntoQueue

Runs a channel and offers each output element into a queue.

When the channel completes, the queue is ended. When the channel fails, the
queue is failed with the channel's cause. The returned effect itself
completes with `void`.

**Signature**

```ts
declare const runIntoQueue: { <OutElem, OutErr>(queue: Queue.Queue<OutElem, OutErr | Cause.Done>): <OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<void, never, Env>; <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>, queue: Queue.Queue<OutElem, OutErr | Cause.Done>): Effect.Effect<void, never, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7823)

Since v4.0.0