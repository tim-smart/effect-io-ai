Package: `effect`<br />
Module: `SqlSchema`<br />

## SqlSchema.void

Run a sql query with a request schema and discard the result.

**Signature**

```ts
declare const void: <Req extends Schema.Top, E, R>(options: { readonly Request: Req; readonly execute: (request: Req["Encoded"]) => Effect.Effect<unknown, E, R>; }) => (request: Req["Type"]) => Effect.Effect<void, E | Schema.SchemaError, R | Req["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlSchema.ts#L80)

Since v4.0.0