# optionalToOptional

- `decode`:
  - `none` as argument means: the value is missing in the input
  - `none` as return value means: the value will be missing in the output
- `encode`:
  - `none` as argument means: the value is missing in the input
  - `none` as return value means: the value will be missing in the output

To import and use `optionalToOptional` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.optionalToOptional
```

**Signature**

```ts
export declare const optionalToOptional: <FA, FI, FR, TA, TI, TR>(
  from: Schema<FA, FI, FR>,
  to: Schema<TA, TI, TR>,
  decode: (o: Option.Option<FA>) => Option.Option<TI>,
  encode: (o: Option.Option<TI>) => Option.Option<FA>
) => PropertySignature<"?:", TA, never, "?:", FI, FR | TR>
```
