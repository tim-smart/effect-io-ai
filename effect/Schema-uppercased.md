# uppercased

Verifies that a string is uppercased.

To import and use `uppercased` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.uppercased
```

**Signature**

```ts
export declare const uppercased: <S extends Schema.Any>(
  annotations?: Annotations.Filter<Schema.Type<S>>
) => <A extends string>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```
