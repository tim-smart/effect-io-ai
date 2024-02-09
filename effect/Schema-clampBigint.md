# clampBigint

Clamps a bigint between a minimum and a maximum value.

To import and use `clampBigint` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.clampBigint
```

**Signature**

```ts
export declare const clampBigint: (
  minimum: bigint,
  maximum: bigint
) => <R, I, A extends bigint>(self: Schema<A, I, R>) => Schema<A, I, R>
```
