Package: `effect`<br />
Module: `AiError`<br />

## AiError.AuthenticationError

Error indicating authentication or authorization failure.

Authentication errors are never retryable without credential changes.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const authError = new AiError.AuthenticationError({
  kind: "InvalidKey"
})

console.log(authError.isRetryable) // false
console.log(authError.message)
// "InvalidKey: Verify your API key is correct"
```

**Signature**

```ts
declare class AuthenticationError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L493)

Since v1.0.0