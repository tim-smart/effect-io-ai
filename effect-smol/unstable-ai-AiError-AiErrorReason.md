Package: `effect`<br />
Module: `AiError`<br />

## AiError.AiErrorReason

Union type of all semantic error reasons that can occur during AI operations.

Each reason type provides:
- Semantic categorization of the failure mode
- `isRetryable` getter indicating if the error is transient
- Optional `retryAfter` duration for rate limit/throttling errors
- Rich context including provider metadata and HTTP details

**Signature**

```ts
type AiErrorReason = | RateLimitError
  | QuotaExhaustedError
  | AuthenticationError
  | ContentPolicyError
  | InvalidRequestError
  | InternalProviderError
  | NetworkError
  | InvalidOutputError
  | StructuredOutputError
  | UnsupportedSchemaError
  | UnknownError
  | ToolNotFoundError
  | ToolParameterValidationError
  | InvalidToolResultError
  | ToolResultEncodingError
  | ToolConfigurationError
  | ToolkitRequiredError
  | InvalidUserInputError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1288)

Since v1.0.0