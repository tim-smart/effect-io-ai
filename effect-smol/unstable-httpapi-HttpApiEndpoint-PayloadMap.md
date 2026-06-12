Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.PayloadMap

Maps content types to the payload encoding strategy and one or more schemas that
can decode or encode payloads for that content type.

**Signature**

```ts
type PayloadMap = ReadonlyMap<string, {
  readonly encoding: HttpApiSchema.PayloadEncoding
  readonly schemas: [Schema.Top, ...Array<Schema.Top>]
}>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L52)

Since v4.0.0