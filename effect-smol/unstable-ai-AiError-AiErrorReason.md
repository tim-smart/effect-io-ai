Package: `effect`<br />
Module: `AiError`<br />

## AiError.AiErrorReason

Union type of all semantic error reasons that can occur during AI operations.

**Details**

Every reason carries a semantic `_tag`, a human-readable message, and an
`isRetryable` getter. Provider-facing reasons may also include retry timing,
provider metadata, usage information, or HTTP context.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1408)

Since v4.0.0