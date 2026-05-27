Package: `effect`<br />
Module: `WorkerError`<br />

## WorkerError.WorkerError

Error raised by worker APIs, wrapping a specific `WorkerErrorReason` and
exposing its message and cause.

**Signature**

```ts
declare class WorkerError { constructor(props: {
    readonly reason: WorkerErrorReason
  }) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkerError.ts#L154)

Since v4.0.0