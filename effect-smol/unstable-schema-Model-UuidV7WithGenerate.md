Package: `effect`<br />
Module: `Model`<br />

## Model.UuidV7WithGenerate

Adds a constructor default that generates a string UUID v7.

**Signature**

```ts
declare const UuidV7WithGenerate: <B extends string>(schema: Schema.brand<Schema.String, B>) => Schema.withConstructorDefault<Schema.brand<Schema.String, B>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L830)

Since v4.0.0