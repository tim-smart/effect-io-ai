Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.HeadersConstraint

Constraint for header schemas: each header must encode to `string | undefined`,
or the schema must encode to a record of those values.

**Signature**

```ts
type HeadersConstraint = | Record<string, Schema.Encoder<string | undefined, unknown>>
  | Schema.Encoder<Record<string, string | undefined>, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L886)

Since v4.0.0