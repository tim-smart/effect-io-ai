Package: `effect`<br />
Module: `Channel`<br />

## Channel.toQueueArray

Creates a scoped queue and forks an array-emitting channel to feed it.

Each element inside emitted non-empty arrays is offered to the queue. Channel
completion and failure are signaled through the queue. The queue is shut down
when the surrounding scope closes.

**Signature**

```ts
declare const toQueueArray: { (options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): <OutElem, OutErr, OutDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<Queue.Dequeue<OutElem, OutErr | Cause.Done>, never, Env | Scope.Scope>; <OutElem, OutErr, OutDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, unknown, unknown, unknown, Env>, options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): Effect.Effect<Queue.Dequeue<OutElem, OutErr | Cause.Done>, never, Env | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7976)

Since v4.0.0