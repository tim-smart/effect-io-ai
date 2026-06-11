Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.QueryConstraint

Constraint for query schemas: each field must encode to `string`, an array of
strings, or `undefined`, or the schema must encode to a record of those values.

**Signature**

```ts
type QueryConstraint = | Record<string, Schema.Encoder<string | ReadonlyArray<string> | undefined, unknown>>
  | Schema.Encoder<Record<string, string | ReadonlyArray<string> | undefined>, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L1008)

Since v4.0.0