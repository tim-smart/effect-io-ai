Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeBase64

Encodes a `Uint8Array` or string to a Base64 string.

Behavior:
- Pure, never fails.

**Example** (Encode to Base64)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeBase64<Uint8Array>()
```

See also:
- `decodeBase64` — inverse (to `Uint8Array`)
- `decodeBase64String` — inverse (to `string`)
- `encodeBase64Url` — URL-safe variant

**Signature**

```ts
declare const encodeBase64: <E extends Uint8Array | string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1218)

Since v4.0.0