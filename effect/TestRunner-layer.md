Package: `@effect/cluster`<br />
Module: `TestRunner`<br />

## TestRunner.layer

An in-memory cluster that can be used for testing purposes.

MessageStorage is backed by an in-memory driver, and RunnerStorage is backed
by an in-memory driver.

**Signature**

```ts
declare const layer: Layer.Layer<Sharding.Sharding | Runners.Runners | MessageStorage.MessageStorage | MessageStorage.MemoryDriver, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/TestRunner.ts#L21)

Since v1.0.0