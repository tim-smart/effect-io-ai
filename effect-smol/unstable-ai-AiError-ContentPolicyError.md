Package: `effect`<br />
Module: `AiError`<br />

## AiError.ContentPolicyError

Error indicating content policy violation.

Content policy errors are never retryable without content changes.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const policyError = new AiError.ContentPolicyError({
  description: "Input contains prohibited content"
})

console.log(policyError.isRetryable) // false
console.log(policyError.message)
// "Content policy violation: Input contains prohibited content"
```

**Signature**

```ts
declare class ContentPolicyError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L547)

Since v1.0.0