Package: `effect`<br />
Module: `SqlResolver`<br />

## SqlResolver.ordered

Creates a resolver for a SQL query with a request schema and a result schema.

**Details**

The request schema is used to validate the input of the query, and the result
schema is used to validate the output of the query. Results are mapped to the
requests in order, so the length of the results must match the length of the
requests.

**Signature**

```ts
declare const ordered: <Req extends Schema.Top, Res extends Schema.Top, _, E, R>(options: { readonly Request: Req; readonly Result: Res; readonly execute: (requests: Arr.NonEmptyArray<Req["Encoded"]>) => Effect.Effect<ReadonlyArray<_>, E, R>; }) => RequestResolver.RequestResolver<SqlRequest<Req["Type"], Res["Type"], E | ResultLengthMismatch, Req["EncodingServices"] | Res["DecodingServices"] | R>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlResolver.ts#L101)

Since v4.0.0