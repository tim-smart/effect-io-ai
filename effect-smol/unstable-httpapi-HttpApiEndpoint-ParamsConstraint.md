Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ParamsConstraint

Constraint for path parameter schemas: each parameter must encode to
`string | undefined`, or the schema must encode to a record of those values.

**Signature**

```ts
type ParamsConstraint = | Record<string, Schema.Codec<unknown, string | undefined, unknown, unknown>>
  | Schema.Codec<unknown, Record<string, string | undefined>, unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L1039)

Since v4.0.0