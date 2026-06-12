Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.PayloadConstraintCodecs

Payload constraint used when automatic codecs are enabled: no-body methods
accept field records for query-style encoding, while body methods accept one or
more schemas.

**Signature**

```ts
type PayloadConstraintCodecs<Method> = Method extends HttpMethod.NoBody ?
  Record<string, Schema.Top> :
  Schema.Top | ReadonlyArray<Schema.Top>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L1080)

Since v4.0.0