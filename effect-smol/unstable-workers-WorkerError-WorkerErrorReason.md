Package: `effect`<br />
Module: `WorkerError`<br />

## WorkerError.WorkerErrorReason

Union of the specific failure reasons that can be wrapped by a `WorkerError`.

**Signature**

```ts
type WorkerErrorReason = | WorkerSpawnError
  | WorkerSendError
  | WorkerReceiveError
  | WorkerUnknownError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkerError.ts#L107)

Since v4.0.0