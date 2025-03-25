Package: `effect`<br />
Module: `Schema`<br />

## Schema.clampDuration

Clamps a `Duration` between a minimum and a maximum value.

**Signature**

```ts
declare const clampDuration: (minimum: duration_.DurationInput, maximum: duration_.DurationInput) => <S extends Schema.Any, A extends duration_.Duration>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => transform<S, filter<SchemaClass<A>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6047)

Since v3.10.0