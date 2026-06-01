Package: `effect`<br />
Module: `SqlSchema`<br />

## SqlSchema.findNonEmpty

Builds a query function that encodes the request, decodes all result rows,
and fails with `NoSuchElementError` when the result set is empty.

**When to use**

Use when you need to run a query that must return at least one row and treat
an empty result as a failure.

**See**

- `findAll` for queries where an empty result should return an empty array

**Signature**

```ts
declare const findNonEmpty: <Req extends Schema.Top, Res extends Schema.Top, E, R>(options: { readonly Request: Req; readonly Result: Res; readonly execute: (request: Req["Encoded"]) => Effect.Effect<ReadonlyArray<unknown>, E, R>; }) => (request: Req["Type"]) => Effect.Effect<Arr.NonEmptyArray<Res["Type"]>, E | Schema.SchemaError | Cause.NoSuchElementError, Req["EncodingServices"] | Res["DecodingServices"] | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlSchema.ts#L89)

Since v4.0.0