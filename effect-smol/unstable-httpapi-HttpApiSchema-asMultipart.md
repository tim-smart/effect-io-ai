Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.asMultipart

Schema type returned by `asMultipart` for buffered multipart payloads.

**Signature**

```ts
export interface asMultipart<S extends Schema.Top> extends Schema.brand<S["Rebuild"], MultipartTypeId> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L276)

Since v4.0.0