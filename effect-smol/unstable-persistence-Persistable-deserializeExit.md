Package: `effect`<br />
Module: `Persistable`<br />

## Persistable.deserializeExit

Decodes a persisted value into an `Exit` for a persistable request using its
success and error schemas.

**Signature**

```ts
declare const deserializeExit: <A extends Schema.Top, E extends Schema.Top>(self: Persistable<A, E>, encoded: unknown) => Effect.Effect<Exit.Exit<A["Type"], E["Type"]>, Schema.SchemaError, A["DecodingServices"] | E["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistable.ts#L256)

Since v4.0.0