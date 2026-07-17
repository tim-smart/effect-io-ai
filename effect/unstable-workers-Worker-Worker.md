Package: `effect`<br />
Module: `Worker`<br />

## Worker.Worker

Effect-based worker abstraction that can send input messages and run a
long-lived handler for output messages, failing with `WorkerError` or handler
errors.

**Signature**

```ts
export interface Worker<O = unknown, I = unknown> {
  readonly send: (
    message: I,
    transfers?: ReadonlyArray<unknown>
  ) => Effect.Effect<void, WorkerError>
  readonly run: <A, E, R>(
    handler: (message: O) => Effect.Effect<A, E, R>,
    options?:
      | {
        readonly onSpawn?: Effect.Effect<void> | undefined
      }
      | undefined
  ) => Effect.Effect<never, E | WorkerError, R>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Worker.ts#L43)

Since v4.0.0