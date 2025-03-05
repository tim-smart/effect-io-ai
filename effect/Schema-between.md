# between

This filter checks whether the provided number falls within the specified minimum and maximum values.

To import and use `between` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.between
```

**Signature**

```ts
export declare const between: <S extends Schema.Any>(
  minimum: number,
  maximum: number,
  annotations?: Annotations.Filter<Schema.Type<S>>
) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```
