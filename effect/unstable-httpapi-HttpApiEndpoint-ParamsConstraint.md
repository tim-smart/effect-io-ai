Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ParamsConstraint

Constraint for path parameter schemas: each parameter must encode to
`string | undefined`, or the schema must encode to a record of those values.

**Signature**

```ts
type ParamsConstraint = | Record<string, Schema.Encoder<string | undefined, unknown>>
  | Schema.Encoder<Record<string, string | undefined>, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L875)

Since v4.0.0