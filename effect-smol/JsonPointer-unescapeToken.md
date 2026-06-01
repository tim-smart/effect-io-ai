Package: `effect`<br />
Module: `JsonPointer`<br />

## JsonPointer.unescapeToken

Decodes a JSON Pointer reference token according to RFC 6901 escaping rules.

**When to use**

Use when you need to decode a single escaped JSON Pointer path segment.

**Details**

- Returns a new unescaped string
- Replaces `~1` with `/` (forward slash) and `~0` with `~` (tilde)
- Returns the input unchanged if it contains no escaped sequences
- Empty strings are valid and returned unchanged

**Gotchas**

The replacement order matters: `~1` is replaced before `~0` to prevent incorrect decoding.

**Example** (Unescaping special characters)

```ts
import { JsonPointer } from "effect"

JsonPointer.unescapeToken("a~1b") // "a/b"
JsonPointer.unescapeToken("c~0d") // "c~d"
JsonPointer.unescapeToken("path~1to~0key") // "path/to~key"
```

**See**

- `escapeToken` The inverse operation for encoding tokens

**Signature**

```ts
declare const unescapeToken: (token: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonPointer.ts#L123)

Since v4.0.0