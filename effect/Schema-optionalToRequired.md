# optionalToRequired

Converts an optional property to a required one through a transformation `Option -> Type`.

- `decode`: `none` as argument means the value is missing in the input.
- `encode`: `none` as return value means the value will be missing in the output.

To import and use `optionalToRequired` from the "Schema" module:

ts
import \* as Schema from "effect/Schema"
// Can be accessed like this
Schema.optionalToRequired
undefined

**Signature**

```ts
export declare const optionalToRequired: <FA, FI, FR, TA, TI, TR>(
  from: Schema<FA, FI, FR>,
  to: Schema<TA, TI, TR>,
  options: { readonly decode: (o: option_.Option<FA>) => TI; readonly encode: (ti: TI) => option_.Option<FA> }
) => PropertySignature<":", TA, never, "?:", FI, false, FR | TR>
```
