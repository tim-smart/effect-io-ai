Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeHex

Decodes a hexadecimal string to a `Uint8Array`.

**Details**

- Fails with `SchemaIssue.InvalidValue` if the input is not valid hex.

**Example** (Decode hex to bytes)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeHex<string>()
// Getter<Uint8Array, string>
```

**See**

- `decodeHexString` to decode to `string` instead
- `encodeHex` for the inverse operation

**Signature**

```ts
declare const decodeHex: <E extends string>() => Getter<Uint8Array, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1391)

Since v4.0.0