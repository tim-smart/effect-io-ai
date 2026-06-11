Package: `effect`<br />
Module: `SqlSchema`<br />

## SqlSchema.findOne

Builds a query function that encodes the request, decodes the first result
row, and fails with `NoSuchElementError` when no rows are returned.

**Signature**

```ts
declare const findOne: <Req extends Schema.Top, Res extends Schema.Top, E, R>(options: { readonly Request: Req; readonly Result: Res; readonly execute: (request: Req["Encoded"]) => Effect.Effect<ReadonlyArray<unknown>, E, R>; }) => (request: Req["Type"]) => Effect.Effect<Res["Type"], E | Schema.SchemaError | Cause.NoSuchElementError, R | Req["EncodingServices"] | Res["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlSchema.ts#L115)

Since v4.0.0