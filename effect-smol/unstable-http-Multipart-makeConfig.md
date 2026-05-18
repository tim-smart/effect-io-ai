Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.makeConfig

Builds the low-level multipart parser configuration from request headers and
the current fiber context.

Parser limits are read from the multipart references, including maximum parts,
field size, file size, total body size, and field MIME type overrides.

**Signature**

```ts
declare const makeConfig: (headers: Record<string, string>) => Effect.Effect<MP.BaseConfig>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Multipart.ts#L363)

Since v4.0.0