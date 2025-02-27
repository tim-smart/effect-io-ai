# clamp

Clamps a number between a minimum and a maximum value.

To import and use `clamp` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.clamp
```

**Signature**

```ts
export declare const clamp: (
  minimum: number,
  maximum: number
) => <S extends Schema.Any, A extends number>(
  self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>
) => transform<S, filter<SchemaClass<A>>>
```
