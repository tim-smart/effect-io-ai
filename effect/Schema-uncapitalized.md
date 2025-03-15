Package: `effect`<br />
Module: `Schema`<br />

## Schema.uncapitalized

Verifies that a string is uncapitalized.

**Signature**

```ts
declare const uncapitalized: <S extends Schema.Any>(annotations?: Annotations.Filter<Schema.Type<S>>) => <A extends string>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4624)

Since v3.10.0