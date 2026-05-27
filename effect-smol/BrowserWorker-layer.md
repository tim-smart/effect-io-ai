Package: `@effect/platform-browser`<br />
Module: `BrowserWorker`<br />

## BrowserWorker.layer

Creates browser worker layers by combining the default `WorkerPlatform` with a spawner for `Worker`, `SharedWorker`, or `MessagePort` instances.

**When to use**

Use when browser parent or client code needs both the browser
`WorkerPlatform` and a `Spawner` from one layer.

**Details**

The `spawn` callback receives the numeric worker id and may return a
`Worker`, `SharedWorker`, or `MessagePort`.

**Gotchas**

Scope finalization sends the worker close protocol over the port. Dedicated
workers created by `spawn` are not terminated by this layer.

**See**

- `layerPlatform` for providing only the browser worker platform

**Signature**

```ts
declare const layer: (spawn: (id: number) => Worker | SharedWorker | MessagePort) => Layer.Layer<Worker.WorkerPlatform | Worker.Spawner>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserWorker.ts#L69)

Since v4.0.0