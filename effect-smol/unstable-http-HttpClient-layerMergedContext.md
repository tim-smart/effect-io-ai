Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.layerMergedContext

Creates an `HttpClient` layer and merges the layer construction context into client response effects.

**Signature**

```ts
declare const layerMergedContext: <E, R>(effect: Effect.Effect<HttpClient, E, R>) => Layer.Layer<HttpClient, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L1471)

Since v4.0.0