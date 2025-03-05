# lowercased

Verifies that a string is lowercased.

To import and use `lowercased` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.lowercased
```

**Signature**

```ts
export declare const lowercased: <S extends Schema.Any>(
  annotations?: Annotations.Filter<Schema.Type<S>>
) => <A extends string>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```
