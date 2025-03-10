# PropertySignatureTransformation

Represents a `PropertySignature -> PropertySignature` transformation

The semantic of `decode` is:

- `none()` represents the absence of the key/value pair
- `some(value)` represents the presence of the key/value pair

The semantic of `encode` is:

- `none()` you don't want to output the key/value pair
- `some(value)` you want to output the key/value pair

To import and use `PropertySignatureTransformation` from the "SchemaAST" module:

```ts
import * as SchemaAST from "effect/SchemaAST"
// Can be accessed like this
SchemaAST.PropertySignatureTransformation
```
