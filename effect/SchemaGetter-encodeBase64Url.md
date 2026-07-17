Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeBase64Url

Encodes a `Uint8Array` or string to a URL-safe Base64 string.

**Details**

The getter is pure and never fails.

**Example** (Encoding to Base64Url)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeBase64Url<Uint8Array>()
```

**See**

- `decodeBase64Url` for the inverse operation to `Uint8Array`
- `decodeBase64UrlString` for the inverse operation to `string`
- `encodeBase64` for the standard Base64 variant

**Signature**

```ts
declare const encodeBase64Url: <E extends Uint8Array | string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaGetter.ts#L1217)

Since v4.0.0