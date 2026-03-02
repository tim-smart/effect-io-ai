Package: `effect`<br />
Module: `SqlSchema`<br />

## SqlSchema.findNonEmpty

Run a sql query with a request schema and a result schema.

**Signature**

```ts
declare const findNonEmpty: <Req extends Schema.Top, Res extends Schema.Top, E, R>(options: { readonly Request: Req; readonly Result: Res; readonly execute: (request: Req["Encoded"]) => Effect.Effect<ReadonlyArray<unknown>, E, R>; }) => (request: Req["Encoded"]) => Effect.Effect<Arr.NonEmptyArray<Res["Type"]>, E | Schema.SchemaError | Cause.NoSuchElementError, Req["EncodingServices"] | Res["DecodingServices"] | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlSchema.ts#L40)

Since v4.0.0