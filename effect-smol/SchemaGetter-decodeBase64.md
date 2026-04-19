Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeBase64

Decodes a Base64 string to a `Uint8Array`.

Behavior:
- Fails with `Issue.InvalidValue` if the input is not valid Base64.

**Example** (Decode Base64 to bytes)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeBase64<string>()
// Getter<Uint8Array, string>
```

See also:
- `decodeBase64String` — decode to `string` instead
- `encodeBase64` — inverse operation

**Signature**

```ts
declare const decodeBase64: <E extends string>() => Getter<Uint8Array, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1292)

Since v4.0.0