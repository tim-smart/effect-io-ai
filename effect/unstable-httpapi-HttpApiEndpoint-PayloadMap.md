Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.PayloadMap

Maps normalized media types to a payload encoding strategy and one or more
schemas. Each schema retains its declared content type in its encoding annotation.

**Signature**

```ts
type PayloadMap = ReadonlyMap<string, {
  readonly encoding: HttpApiSchema.PayloadEncoding
  readonly schemas: readonly [Schema.Top, ...Array<Schema.Top>]
}>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L128)

Since v4.0.0