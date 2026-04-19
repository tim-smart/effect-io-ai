Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeHex

Decodes a hexadecimal string to a `Uint8Array`.

Behavior:
- Fails with `Issue.InvalidValue` if the input is not valid hex.

**Example** (Decode hex to bytes)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeHex<string>()
// Getter<Uint8Array, string>
```

See also:
- `decodeHexString` — decode to `string` instead
- `encodeHex` — inverse operation

**Signature**

```ts
declare const decodeHex: <E extends string>() => Getter<Uint8Array, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1416)

Since v4.0.0