## int

Ensures that the provided value is an integer number (excluding NaN, +Infinity, and -Infinity).

**Signature**

```ts
declare const int: <S extends Schema.Any>(annotations?: Annotations.Filter<Schema.Type<S>>) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5059)

Since v3.10.0