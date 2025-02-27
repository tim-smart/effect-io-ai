# greaterThanOrEqualTo

This filter checks whether the provided number is greater than or equal to the specified minimum.

To import and use `greaterThanOrEqualTo` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.greaterThanOrEqualTo
```

**Signature**

```ts
export declare const greaterThanOrEqualTo: <S extends Schema.Any>(
  minimum: number,
  annotations?: Annotations.Filter<Schema.Type<S>>
) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```
