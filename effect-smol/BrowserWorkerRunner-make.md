Package: `@effect/platform-browser`<br />
Module: `BrowserWorkerRunner`<br />

## BrowserWorkerRunner.make

Creates a `WorkerRunnerPlatform` service that runs worker handlers over a `MessagePort` or `Window`.

**Signature**

```ts
declare const make: (self: MessagePort | Window) => WorkerRunner.WorkerRunnerPlatform["Service"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserWorkerRunner.ts#L60)

Since v4.0.0