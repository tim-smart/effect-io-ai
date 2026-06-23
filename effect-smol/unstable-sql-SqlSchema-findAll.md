Package: `effect`<br />
Module: `SqlSchema`<br />

## SqlSchema.findAll

Builds a query function that encodes the request and decodes all result rows,
allowing an empty result set.

**When to use**

Use when you need to run a query that may return zero or more rows and
represent an empty result as an empty array.

**See**

- `findNonEmpty` for queries where an empty result is a failure

**Signature**

```ts
declare const findAll: <Req extends Schema.Constraint, Res extends Schema.Constraint, E, R>(options: { readonly Request: Req; readonly Result: Res; readonly execute: (request: Req["Encoded"]) => Effect.Effect<ReadonlyArray<unknown>, E, R>; }) => (request: Req["Type"]) => Effect.Effect<Array<Res["Type"]>, E | Schema.SchemaError, Req["EncodingServices"] | Res["DecodingServices"] | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlSchema.ts#L33)

Since v4.0.0