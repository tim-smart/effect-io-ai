Package: `effect`<br />
Module: `AiError`<br />

## AiError.InvalidUserInputError

Error indicating the user provided invalid input in their prompt.

This error is raised when the prompt contains content that is structurally
valid but not supported by the provider (e.g., unsupported media types,
unsupported file formats, etc.).

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const error = new AiError.InvalidUserInputError({
  description: "Unsupported media type 'video/mp4'. Supported types: image/*, application/pdf, text/plain"
})

console.log(error.isRetryable) // false
console.log(error.message)
// "Invalid user input: Unsupported media type 'video/mp4'. Supported types: image/*, application/pdf, text/plain"
```

**Signature**

```ts
declare class InvalidUserInputError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1243)

Since v1.0.0