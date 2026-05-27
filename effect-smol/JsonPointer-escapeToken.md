Package: `effect`<br />
Module: `JsonPointer`<br />

## JsonPointer.escapeToken

Escapes a JSON Pointer reference token according to RFC 6901 by encoding special characters so the token can be safely used as a segment in a JSON Pointer.

**When to use**

Use to build JSON Pointers from object keys or path segments that may contain special characters
- Escaping tokens before joining them with `/` to form a complete JSON Pointer
- Preparing reference tokens for use in JSON Patch operations or schema references

**Details**

- Does not mutate the input string; returns a new escaped string
- Replaces `~` (tilde) with `~0` and `/` (forward slash) with `~1`
- Returns the input unchanged if it contains no special characters
- Empty strings are valid and returned unchanged

**Gotchas**

The replacement order matters: `~` is replaced before `/` to prevent double-escaping.

**Example** (Escaping special characters)

```ts
import { JsonPointer } from "effect"

JsonPointer.escapeToken("a/b") // "a~1b"
JsonPointer.escapeToken("c~d") // "c~0d"
JsonPointer.escapeToken("path/to~key") // "path~1to~0key"
```

**See**

- `unescapeToken` The inverse operation for decoding escaped tokens

**Signature**

```ts
declare const escapeToken: (token: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonPointer.ts#L89)

Since v4.0.0