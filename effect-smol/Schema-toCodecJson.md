Package: `effect`<br />
Module: `Schema`<br />

## Schema.toCodecJson

Derives a canonical JSON codec from a schema. The encoded form is `unknown`
(any JSON-compatible value), decoded to the schema's `Type`.

**Signature**

```ts
declare const toCodecJson: <T, E, RD, RE>(schema: Codec<T, E, RD, RE>) => Codec<T, Json, RD, RE>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11166)

Since v4.0.0