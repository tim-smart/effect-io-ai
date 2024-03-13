# optionalToRequired

- `decode`: `none` as argument means: the value is missing in the input
- `encode`: `none` as return value means: the value will be missing in the output

To import and use `optionalToRequired` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.optionalToRequired
```

**Signature**

```ts
export declare const optionalToRequired: <FA, FI, FR, TA, TI, TR>(
  from: Schema<FA, FI, FR>,
  to: Schema<TA, TI, TR>,
  decode: (o: Option.Option<FA>) => TI,
  encode: (ti: TI) => Option.Option<FA>
) => PropertySignature<":", TA, never, "?:", FI, FR | TR>
```
