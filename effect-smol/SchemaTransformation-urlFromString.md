Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.urlFromString

Decodes a `string` into a `URL` and encodes a `URL` back to its `href`
string.

When to use this:
- Parsing URL strings from user input or API responses.

Behavior:
- Decode: calls `new URL(s)`. Fails with `InvalidValue` if the string
  is not a valid URL.
- Encode: returns `url.href`.

**Example** (URL from string)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.URL, SchemaTransformation.urlFromString)
)
```

See also:
- `numberFromString`
- `transformOrFail`

**Signature**

```ts
declare const urlFromString: Transformation<URL, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1213)

Since v4.0.0