Package: `effect`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.EmbeddingRequest

Represents a tagged request used by request resolvers for embedding operations.

**When to use**

Use when you need a typed request for one embedding input while building or
calling a low-level embedding request resolver.

**See**

- `Service` for the resolver-bearing service contract
- `make` for constructing the request resolver from a provider implementation
- `EmbedResponse` for the response produced by this request

**Signature**

```ts
declare class EmbeddingRequest
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EmbeddingModel.ts#L147)

Since v4.0.0