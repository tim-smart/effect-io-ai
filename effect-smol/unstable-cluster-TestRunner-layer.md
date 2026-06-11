Package: `effect`<br />
Module: `TestRunner`<br />

## TestRunner.layer

Layer that provides an in-memory cluster for testing.

**Details**

`MessageStorage` and `RunnerStorage` are backed by in-memory drivers.

**Signature**

```ts
declare const layer: Layer.Layer<Sharding.Sharding | Runners.Runners | MessageStorage.MessageStorage | MessageStorage.MemoryDriver, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestRunner.ts#L29)

Since v4.0.0