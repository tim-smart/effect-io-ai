Package: `effect`<br />
Module: `SqlSchema`<br />

## SqlSchema.findAll

Run a sql query with a request schema and a result schema.

**Signature**

```ts
declare const findAll: <Req extends Schema.Top, Res extends Schema.Top, E, R>(options: { readonly Request: Req; readonly Result: Res; readonly execute: (request: Req["Encoded"]) => Effect.Effect<ReadonlyArray<unknown>, E, R>; }) => (request: Req["Type"]) => Effect.Effect<Array<Res["Type"]>, E | Schema.SchemaError, Req["EncodingServices"] | Res["DecodingServices"] | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlSchema.ts#L16)

Since v4.0.0