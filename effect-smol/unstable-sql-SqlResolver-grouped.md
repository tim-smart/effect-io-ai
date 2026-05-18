Package: `effect`<br />
Module: `SqlResolver`<br />

## SqlResolver.grouped

Creates a batched SQL request resolver that encodes requests, decodes result
rows, groups decoded results by matching request and result keys, and fails a
request with `NoSuchElementError` when no result group exists.

**Signature**

```ts
declare const grouped: <Req extends Schema.Top, Res extends Schema.Top, K, Row, E, R>(options: { readonly Request: Req; readonly RequestGroupKey: (request: Req["Type"]) => K; readonly Result: Res; readonly ResultGroupKey: (result: Res["Type"], row: Types.NoInfer<Row>) => K; readonly execute: (requests: Arr.NonEmptyArray<Req["Encoded"]>) => Effect.Effect<ReadonlyArray<Row>, E, R>; }) => RequestResolver.RequestResolver<SqlRequest<Req["Type"], Arr.NonEmptyArray<Res["Type"]>, E | Schema.SchemaError | Cause.NoSuchElementError, Req["EncodingServices"] | Res["DecodingServices"] | R>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlResolver.ts#L163)

Since v4.0.0