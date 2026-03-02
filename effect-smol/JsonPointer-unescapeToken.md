Package: `effect`<br />
Module: `JsonPointer`<br />

## JsonPointer.unescapeToken

Unescapes a JSON Pointer reference token according to RFC 6901.

Decodes escaped characters in a reference token to recover the original token value.

## When to use this

- Parsing JSON Pointers to extract the original token values from escaped segments
- Converting escaped tokens back to their original form for use as object keys or identifiers
- Resolving schema references or JSON Patch paths that use escaped tokens

## Behavior

- Does not mutate the input string; returns a new unescaped string
- Replaces `~1` with `/` (forward slash) and `~0` with `~` (tilde)
- Replacement order matters: `~1` is replaced before `~0` to prevent incorrect decoding
- Returns the input unchanged if it contains no escaped sequences
- Empty strings are valid and returned unchanged

**Example** (Unescaping special characters)

```ts
import { unescapeToken } from "effect/JsonPointer"

unescapeToken("a~1b") // "a/b"
unescapeToken("c~0d") // "c~d"
unescapeToken("path~1to~0key") // "path/to~key"
```

## See also

- `escapeToken` - The inverse operation for encoding tokens

**Signature**

```ts
declare const unescapeToken: (token: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonPointer.ts#L129)

Since v4.0.0