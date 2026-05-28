Package: `effect`<br />
Module: `Model`<br />

## Model.UuidV4BytesWithGenerate

Adds a constructor default that generates a binary UUID v4 for a branded
`Uint8Array` schema.

**Signature**

```ts
declare const UuidV4BytesWithGenerate: <B extends string>(schema: Schema.brand<Schema.instanceOf<Uint8Array<ArrayBuffer>>, B>) => Schema.withConstructorDefault<Schema.brand<Schema.instanceOf<Uint8Array<ArrayBuffer>>, B>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L744)

Since v4.0.0