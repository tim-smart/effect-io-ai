Package: `effect`<br />
Module: `Schema`<br />

## Schema.DataFromSelf

Type and Encoded must extend `Readonly<Record<string, any>> |
ReadonlyArray<any>` to be compatible with this API.

**Signature**

```ts
declare const DataFromSelf: <S extends Schema.Any, A extends Readonly<Record<string, unknown>> | ReadonlyArray<unknown>, I extends Readonly<Record<string, unknown>> | ReadonlyArray<unknown>>(value: S & Schema<A & Schema.Type<S>, I & Schema.Encoded<S>, Schema.Context<S>>) => DataFromSelf<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8411)

Since v3.10.0