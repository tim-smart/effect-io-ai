Package: `effect`<br />
Module: `Worker`<br />

## Worker.layerSpawner

Creates a layer that provides a worker `Spawner` service from a `SpawnerFn`.

**Signature**

```ts
declare const layerSpawner: <W = unknown>(spawner: SpawnerFn<W>) => Layer.Layer<Spawner>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Worker.ts#L161)

Since v4.0.0