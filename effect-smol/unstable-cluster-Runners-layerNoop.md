Package: `effect`<br />
Module: `Runners`<br />

## Runners.layerNoop

Layer that provides the no-op `Runners` service, using the default snowflake
generator.

**Signature**

```ts
declare const layerNoop: Layer.Layer<Runners, never, MessageStorage.MessageStorage | ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runners.ts#L470)

Since v4.0.0