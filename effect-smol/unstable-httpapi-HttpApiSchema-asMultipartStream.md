Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.asMultipartStream

Schema type returned by `asMultipartStream` for streaming multipart payloads.

**Signature**

```ts
export interface asMultipartStream<S extends Schema.Top> extends Schema.brand<S["Rebuild"], MultipartStreamTypeId> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L320)

Since v4.0.0