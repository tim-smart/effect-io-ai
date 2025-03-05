# Data

Type and Encoded must extend `Readonly<Record<string, any>> |
ReadonlyArray<any>` to be compatible with this API.

To import and use `Data` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.Data
```

**Signature**

```ts
export declare const Data: <
  S extends Schema.Any,
  A extends Readonly<Record<string, unknown>> | ReadonlyArray<unknown>,
  I extends Readonly<Record<string, unknown>> | ReadonlyArray<unknown>
>(
  value: S & Schema<A & Schema.Type<S>, I & Schema.Encoded<S>, Schema.Context<S>>
) => Data<S>
```
