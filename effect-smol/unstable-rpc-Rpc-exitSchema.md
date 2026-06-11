Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.exitSchema

Builds the `Schema.Exit` used to encode and decode RPC results.

**Details**

The failure side includes the RPC error schema, middleware error schemas, and
stream error schema for streaming RPCs. Streaming RPCs use `Schema.Void` for
the exit success value. The schema is cached per RPC definition.

**Signature**

```ts
declare const exitSchema: <R extends Any>(self: R) => Schema.Exit<SuccessExitSchema<R>, ErrorExitSchema<R>, DefectSchema>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L1122)

Since v4.0.0