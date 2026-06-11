Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.MaxBodySize

Provides the `MaxBodySize` fiber reference for configuring request body limits.

**When to use**

Use to configure the maximum body size accepted while reading server
request bodies.

**Signature**

```ts
declare const MaxBodySize: Context.Reference<FileSystem.Size | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L50)

Since v4.0.0