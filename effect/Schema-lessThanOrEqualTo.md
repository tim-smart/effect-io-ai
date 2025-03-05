# lessThanOrEqualTo

This schema checks whether the provided number is less than or equal to the specified maximum.

To import and use `lessThanOrEqualTo` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.lessThanOrEqualTo
```

**Signature**

```ts
export declare const lessThanOrEqualTo: <S extends Schema.Any>(
  maximum: number,
  annotations?: Annotations.Filter<Schema.Type<S>>
) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```
