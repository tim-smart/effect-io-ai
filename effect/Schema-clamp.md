Package: `effect`<br />
Module: `Schema`<br />

## Schema.clamp

Clamps a number between a minimum and a maximum value.

**Signature**

```ts
declare const clamp: (minimum: number, maximum: number) => <S extends Schema.Any, A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => transform<S, filter<SchemaClass<A>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5283)

Since v3.10.0