# int

Ensures that the provided value is an integer number (excluding NaN, +Infinity, and -Infinity).

To import and use `int` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.int
```

**Signature**

```ts
export declare const int: <S extends Schema.Any>(
  annotations?: Annotations.Filter<Schema.Type<S>>
) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```
