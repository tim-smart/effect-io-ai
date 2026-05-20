Package: `effect`<br />
Module: `Model`<br />

## Model.UuidV4WithGenerate

Adds a constructor default that generates a string UUID v4.

**Signature**

```ts
declare const UuidV4WithGenerate: <B extends string>(schema: Schema.brand<Schema.String, B>) => Schema.withConstructorDefault<Schema.brand<Schema.String, B>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L788)

Since v4.0.0