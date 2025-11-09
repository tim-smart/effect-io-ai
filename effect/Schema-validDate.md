Package: `effect`<br />
Module: `Schema`<br />

## Schema.validDate

Defines a filter that specifically rejects invalid dates, such as `new
Date("Invalid Date")`. This filter ensures that only properly formatted and
valid date objects are accepted, enhancing data integrity by preventing
erroneous date values from being processed.

**Signature**

```ts
declare const validDate: <S extends Schema.Any>(annotations?: Annotations.Filter<Schema.Type<S>>) => <A extends Date>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6619)

Since v3.10.0