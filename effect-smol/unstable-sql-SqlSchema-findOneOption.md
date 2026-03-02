Package: `effect`<br />
Module: `SqlSchema`<br />

## SqlSchema.findOneOption

Run a sql query with a request schema and a result schema and return the first result.

**Signature**

```ts
declare const findOneOption: <Req extends Schema.Top, Res extends Schema.Top, E, R>(options: { readonly Request: Req; readonly Result: Res; readonly execute: (request: Req["Encoded"]) => Effect.Effect<ReadonlyArray<unknown>, E, R>; }) => (request: Req["Type"]) => Effect.Effect<Option.Option<Res["Type"]>, E | Schema.SchemaError, R | Req["EncodingServices"] | Res["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlSchema.ts#L121)

Since v4.0.0