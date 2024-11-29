# requiredToOptional

Converts an optional property to a required one through a transformation `Type -> Option`.

- `decode`: `none` as return value means the value will be missing in the output.
- `encode`: `none` as argument means the value is missing in the input.

To import and use `requiredToOptional` from the "Schema" module:

ts
import \* as Schema from "effect/Schema"
// Can be accessed like this
Schema.requiredToOptional
undefined

**Signature**

```ts
export declare const requiredToOptional: <FA, FI, FR, TA, TI, TR>(
  from: Schema<FA, FI, FR>,
  to: Schema<TA, TI, TR>,
  options: { readonly decode: (fa: FA) => option_.Option<TI>; readonly encode: (o: option_.Option<TI>) => FA }
) => PropertySignature<"?:", TA, never, ":", FI, false, FR | TR>
```
