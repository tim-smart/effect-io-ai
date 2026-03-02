Package: `effect`<br />
Module: `JsonPointer`<br />

## JsonPointer.escapeToken

Escapes a JSON Pointer reference token according to RFC 6901.

Encodes special characters in a reference token so it can be safely used as a segment in a JSON Pointer.

## When to use this

- Building JSON Pointers from object keys or path segments that may contain special characters
- Escaping tokens before joining them with `/` to form a complete JSON Pointer
- Preparing reference tokens for use in JSON Patch operations or schema references

## Behavior

- Does not mutate the input string; returns a new escaped string
- Replaces `~` (tilde) with `~0` and `/` (forward slash) with `~1`
- Replacement order matters: `~` is replaced before `/` to prevent double-escaping
- Returns the input unchanged if it contains no special characters
- Empty strings are valid and returned unchanged

**Example** (Escaping special characters)

```ts
import { escapeToken } from "effect/JsonPointer"

escapeToken("a/b") // "a~1b"
escapeToken("c~d") // "c~0d"
escapeToken("path/to~key") // "path~1to~0key"
```

## See also

- `unescapeToken` - The inverse operation for decoding escaped tokens

**Signature**

```ts
declare const escapeToken: (token: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonPointer.ts#L90)

Since v4.0.0