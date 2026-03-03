Package: `effect`<br />
Module: `Schema`<br />

## Schema.brand

Adds a brand to a schema.

**Signature**

```ts
declare const brand: <B extends string>(identifier: B) => <S extends Top>(schema: S) => brand<S["~rebuild.out"], B>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2682)

Since v4.0.0