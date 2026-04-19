Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeHexString

Decodes a hexadecimal string to a UTF-8 `string`.

Behavior:
- Fails with `Issue.InvalidValue` if the input is not valid hex.

**Example** (Decode hex to string)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeHexString<string>()
// Getter<string, string>
```

See also:
- `decodeHex` — decode to `Uint8Array` instead
- `encodeHex` — inverse operation

**Signature**

```ts
declare const decodeHexString: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1447)

Since v4.0.0