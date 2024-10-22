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
) => <A extends bigint, I, R>(self: Schema<A, I, R>) => transform<Schema<A, I, R>, filter<Schema<A>>>
```
