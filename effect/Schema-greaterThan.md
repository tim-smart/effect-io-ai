# greaterThan

This filter checks whether the provided number is greater than the specified minimum.

To import and use `greaterThan` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.greaterThan
```

**Signature**

```ts
export declare const greaterThan: <S extends Schema.Any>(
  exclusiveMinimum: number,
  annotations?: Annotations.Filter<Schema.Type<S>>
) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```
