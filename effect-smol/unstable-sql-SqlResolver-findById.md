Package: `effect`<br />
Module: `SqlResolver`<br />

## SqlResolver.findById

Creates a batched resolver that fetches rows for encoded ids, decodes
results, completes each matching request using `ResultId`, and fails missing
ids with `NoSuchElementError`.

**Signature**

```ts
declare const findById: <Id extends Schema.Top, Res extends Schema.Top, Row, E, R>(options: { readonly Id: Id; readonly Result: Res; readonly ResultId: (result: Res["Type"], row: Types.NoInfer<Row>) => Id["Type"]; readonly execute: (requests: Arr.NonEmptyArray<Id["Encoded"]>) => Effect.Effect<ReadonlyArray<Row>, E, R>; }) => RequestResolver.RequestResolver<SqlRequest<Id["Type"], Res["Type"], E | Schema.SchemaError | Cause.NoSuchElementError, Id["EncodingServices"] | Res["DecodingServices"] | R>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlResolver.ts#L217)

Since v4.0.0