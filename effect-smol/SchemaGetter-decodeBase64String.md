Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeBase64String

Decodes a Base64 string to a UTF-8 `string`.

Behavior:
- Fails with `Issue.InvalidValue` if the input is not valid Base64.

**Example** (Decode Base64 to string)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeBase64String<string>()
// Getter<string, string>
```

See also:
- `decodeBase64` — decode to `Uint8Array` instead
- `encodeBase64` — inverse operation

**Signature**

```ts
declare const decodeBase64String: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1323)

Since v4.0.0