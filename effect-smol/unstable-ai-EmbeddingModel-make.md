Package: `effect`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.make

Creates an EmbeddingModel service from a provider embedMany implementation.

**When to use**

Use to adapt a provider's batch embedding implementation into an
`EmbeddingModel.Service` that offers single-input and batch embedding
operations.

**Details**

The returned service builds single-input `embed` calls through a request
resolver, so concurrent `embed` requests can be batched into one provider
`embedMany` call. Direct `embedMany` calls pass the input array to the
provider, while `embedMany([])` returns an empty response without calling the
provider.

**Gotchas**

Provider responses are interpreted positionally and must contain exactly one
result for each requested input. If the provider returns a different number
of results, `embed` and `embedMany` fail with `AiError.InvalidOutputError`.

**See**

- `Service` for the service shape returned by this constructor
- `ProviderOptions` for the input passed to the provider implementation
- `ProviderResponse` for the provider response contract consumed by this constructor

**Signature**

```ts
declare const make: (params: { readonly embedMany: (options: ProviderOptions) => Effect.Effect<ProviderResponse, AiError.AiError>; }) => Effect.Effect<Service>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EmbeddingModel.ts#L202)

Since v4.0.0