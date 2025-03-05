# finite

Ensures that the provided value is a finite number (excluding NaN, +Infinity, and -Infinity).

To import and use `finite` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.finite
```

**Signature**

```ts
export declare const finite: <S extends Schema.Any>(
  annotations?: Annotations.Filter<Schema.Type<S>>
) => <A extends number>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```
