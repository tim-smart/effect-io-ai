Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeBase64UrlString

Decodes a URL-safe Base64 string to a UTF-8 `string`.

Behavior:
- Fails with `Issue.InvalidValue` if the input is not valid Base64Url.

**Example** (Decode Base64Url to string)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeBase64UrlString<string>()
// Getter<string, string>
```

See also:
- `decodeBase64Url` — decode to `Uint8Array` instead
- `encodeBase64Url` — inverse operation

**Signature**

```ts
declare const decodeBase64UrlString: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1388)

Since v4.0.0