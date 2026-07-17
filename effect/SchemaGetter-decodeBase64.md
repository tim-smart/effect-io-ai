Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeBase64

Decodes a Base64 string to a `Uint8Array`.

**Details**

- Fails with `SchemaIssue.InvalidValue` if the input is not valid Base64.

**Example** (Decoding Base64 to bytes)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeBase64<string>()
// Getter<Uint8Array, string>
```

**See**

- `decodeBase64String` to decode to `string` instead
- `encodeBase64` for the inverse operation

**Signature**

```ts
declare const decodeBase64: <E extends string>() => Getter<Uint8Array, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaGetter.ts#L1268)

Since v4.0.0