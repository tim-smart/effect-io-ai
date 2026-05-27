Package: `effect`<br />
Module: `TestRunner`<br />

## TestRunner.layer

An in-memory cluster that can be used for testing purposes.

**Details**

`MessageStorage` and `RunnerStorage` are backed by in-memory drivers.

**Signature**

```ts
declare const layer: Layer.Layer<Sharding.Sharding | Runners.Runners | MessageStorage.MessageStorage | MessageStorage.MemoryDriver, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestRunner.ts#L50)

Since v4.0.0