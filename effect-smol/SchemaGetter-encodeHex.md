Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeHex

Encodes a `Uint8Array` or string to a hexadecimal string.

**Details**

The getter is pure and never fails.

**Example** (Encode to hex)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeHex<Uint8Array>()
```

**See**

- `decodeHex` for the inverse operation to `Uint8Array`
- `decodeHexString` for the inverse operation to `string`

**Signature**

```ts
declare const encodeHex: <E extends Uint8Array | string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1241)

Since v4.0.0