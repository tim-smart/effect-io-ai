Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeHex

Encodes a `Uint8Array` or string to a hexadecimal string.

Behavior:
- Pure, never fails.

**Example** (Encode to hex)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeHex<Uint8Array>()
```

See also:
- `decodeHex` — inverse (to `Uint8Array`)
- `decodeHexString` — inverse (to `string`)

**Signature**

```ts
declare const encodeHex: <E extends Uint8Array | string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1266)

Since v4.0.0