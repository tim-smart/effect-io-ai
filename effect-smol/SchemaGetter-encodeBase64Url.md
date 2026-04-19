Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeBase64Url

Encodes a `Uint8Array` or string to a URL-safe Base64 string.

Behavior:
- Pure, never fails.

**Example** (Encode to Base64Url)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeBase64Url<Uint8Array>()
```

See also:
- `decodeBase64Url` — inverse (to `Uint8Array`)
- `decodeBase64UrlString` — inverse (to `string`)
- `encodeBase64` — standard Base64 variant

**Signature**

```ts
declare const encodeBase64Url: <E extends Uint8Array | string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1241)

Since v4.0.0