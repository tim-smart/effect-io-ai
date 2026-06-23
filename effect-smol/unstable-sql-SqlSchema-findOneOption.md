Package: `effect`<br />
Module: `SqlSchema`<br />

## SqlSchema.findOneOption

Builds a query function that encodes the request, decodes the first result row
as `Option.some`, and returns `Option.none` when no rows are returned.

**Signature**

```ts
declare const findOneOption: <Req extends Schema.Constraint, Res extends Schema.Constraint, E, R>(options: { readonly Request: Req; readonly Result: Res; readonly execute: (request: Req["Encoded"]) => Effect.Effect<ReadonlyArray<unknown>, E, R>; }) => (request: Req["Type"]) => Effect.Effect<Option.Option<Res["Type"]>, E | Schema.SchemaError, R | Req["EncodingServices"] | Res["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlSchema.ts#L148)

Since v4.0.0