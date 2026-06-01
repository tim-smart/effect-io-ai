Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.urlFromString

Decodes a `string` into a `URL` and encodes a `URL` back to its `href`
string.

**When to use**

Use when you need a schema transformation to parse URL strings from user
input or API responses.

**Details**

Decoding calls `new URL(s)` and fails with `InvalidValue` if the string is
not a valid URL. Encoding returns `url.href`.

**Example** (URL from string)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.URL, SchemaTransformation.urlFromString)
)
```

**See**

- `numberFromString`
- `transformOrFail`

**Signature**

```ts
declare const urlFromString: Transformation<URL, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1357)

Since v4.0.0