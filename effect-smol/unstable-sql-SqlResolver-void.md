Package: `effect`<br />
Module: `SqlResolver`<br />

## SqlResolver.void

Create a resolver that performs side effects.

**Signature**

```ts
declare const void: <Req extends Schema.Top, _, E, R>(options: { readonly Request: Req; readonly execute: (requests: Arr.NonEmptyArray<Req["Encoded"]>) => Effect.Effect<ReadonlyArray<_>, E, R>; }) => RequestResolver.RequestResolver<SqlRequest<Req["Type"], void, E | Schema.SchemaError, Req["EncodingServices"] | R>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlResolver.ts#L299)

Since v4.0.0