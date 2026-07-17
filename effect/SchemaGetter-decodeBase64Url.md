Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeBase64Url

Decodes a URL-safe Base64 string to a `Uint8Array`.

**Details**

- Fails with `SchemaIssue.InvalidValue` if the input is not valid Base64Url.

**Example** (Decoding Base64Url to bytes)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeBase64Url<string>()
// Getter<Uint8Array, string>
```

**See**

- `decodeBase64UrlString` to decode to `string` instead
- `encodeBase64Url` for the inverse operation

**Signature**

```ts
declare const decodeBase64Url: <E extends string>() => Getter<Uint8Array, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaGetter.ts#L1330)

Since v4.0.0