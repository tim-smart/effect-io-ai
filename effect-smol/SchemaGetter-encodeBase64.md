Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeBase64

Encodes a `Uint8Array` or string to a Base64 string.

**Details**

The getter is pure and never fails.

**Example** (Encoding to Base64)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeBase64<Uint8Array>()
```

**See**

- `decodeBase64` for the inverse operation to `Uint8Array`
- `decodeBase64String` for the inverse operation to `string`
- `encodeBase64Url` for the URL-safe variant

**Signature**

```ts
declare const encodeBase64: <E extends Uint8Array | string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1191)

Since v4.0.0