# uncapitalized

Verifies that a string is uncapitalized.

To import and use `uncapitalized` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.uncapitalized
```

**Signature**

```ts
export declare const uncapitalized: <S extends Schema.Any>(
  annotations?: Annotations.Filter<Schema.Type<S>>
) => <A extends string>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```
