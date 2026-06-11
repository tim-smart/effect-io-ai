Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeHexString

Decodes a hexadecimal string to a UTF-8 `string`.

**Details**

- Fails with `SchemaIssue.InvalidValue` if the input is not valid hex.

**Example** (Decode hex to string)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeHexString<string>()
// Getter<string, string>
```

**See**

- `decodeHex` to decode to `Uint8Array` instead
- `encodeHex` for the inverse operation

**Signature**

```ts
declare const decodeHexString: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1422)

Since v4.0.0