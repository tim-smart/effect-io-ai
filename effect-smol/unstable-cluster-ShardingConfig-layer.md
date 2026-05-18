Package: `effect`<br />
Module: `ShardingConfig`<br />

## ShardingConfig.layer

Creates a `ShardingConfig` layer by merging the provided partial options over
`defaults`.

**Signature**

```ts
declare const layer: (options?: Partial<ShardingConfig["Service"]>) => Layer.Layer<ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ShardingConfig.ts#L186)

Since v4.0.0