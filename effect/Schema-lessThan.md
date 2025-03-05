# lessThan

This filter checks whether the provided number is less than the specified maximum.

To import and use `lessThan` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.lessThan
```

**Signature**

```ts
export declare const lessThan: <S extends Schema.Any>(
  exclusiveMaximum: number,
  annotations?: Annotations.Filter<Schema.Type<S>>
) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```
