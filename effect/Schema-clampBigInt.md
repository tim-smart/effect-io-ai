# clampBigInt

Clamps a bigint between a minimum and a maximum value.

To import and use `clampBigInt` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.clampBigInt
```

**Signature**

```ts
export declare const clampBigInt: (
  minimum: bigint,
  maximum: bigint
) => <S extends Schema.Any, A extends bigint>(
  self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>
) => transform<S, filter<SchemaClass<A>>>
```
