Package: `effect`<br />
Module: `Persistable`<br />

## Persistable.serializeExit

Encodes an `Exit` for a persistable request using its success and error
schemas.

**Signature**

```ts
declare const serializeExit: <A extends Schema.Top, E extends Schema.Top>(self: Persistable<A, E>, exit: Exit.Exit<A["Type"], E["Type"]>) => Effect.Effect<unknown, Schema.SchemaError, A["EncodingServices"] | E["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistable.ts#L234)

Since v4.0.0