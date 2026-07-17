Package: `effect`<br />
Module: `Worker`<br />

## Worker.makePlatform

Creates a `WorkerPlatform` from platform-specific setup and listen hooks,
buffering sent messages until the worker is ready and scoping port cleanup to
the worker run.

**Signature**

```ts
declare const makePlatform: <W>() => <P extends { readonly postMessage: (message: any, transfers?: any | undefined) => void; }>(options: { readonly setup: (options: { readonly worker: W; readonly scope: Scope.Scope; }) => Effect.Effect<P, WorkerError>; readonly listen: (options: { readonly port: P; readonly emit: (data: any) => void; readonly deferred: Deferred.Deferred<never, WorkerError>; readonly scope: Scope.Scope; }) => Effect.Effect<void>; }) => WorkerPlatform["Service"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Worker.ts#L145)

Since v4.0.0