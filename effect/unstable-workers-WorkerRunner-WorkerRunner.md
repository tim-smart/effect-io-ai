Package: `effect`<br />
Module: `WorkerRunner`<br />

## WorkerRunner.WorkerRunner

Platform-neutral worker runner that receives inbound messages by port ID,
sends outbound messages, and optionally exposes disconnect notifications.

**Signature**

```ts
export interface WorkerRunner<O = unknown, I = unknown> {
  readonly run: <A, E, R>(
    handler: (portId: number, message: I) => Effect.Effect<A, E, R> | void
  ) => Effect.Effect<void, WorkerError, R>
  readonly send: (
    portId: number,
    message: O,
    transfers?: ReadonlyArray<unknown>
  ) => Effect.Effect<void>
  readonly sendUnsafe: (
    portId: number,
    message: O,
    transfers?: ReadonlyArray<unknown>
  ) => void
  readonly disconnects?: Queue.Dequeue<number> | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/WorkerRunner.ts#L23)

Since v4.0.0