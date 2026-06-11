Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.make

Creates a LanguageModel service from provider-specific text generation and
streaming implementations.

**When to use**

Use when you are implementing a provider adapter and need to expose the
standard language-model service while keeping provider-specific request hooks
behind it.

**Details**

The returned service implements `generateText`, `generateObject`, and
`streamText`. It prepares `ProviderOptions` for each request, including the
normalized prompt, tools, tool choice, response format, tracing span, and
incremental response fields, before calling the supplied provider hook.
Structured object generation uses the `generateText` hook and the configured
`codecTransformer`, or `defaultCodecTransformer` when none is supplied.

**Gotchas**

Provider hooks must return encoded response parts that match the toolkit and
response format prepared in `ProviderOptions`; invalid parts fail decoding as
`AiError.InvalidOutputError`.

**See**

- `Service` for the returned service contract
- `ProviderOptions` for the normalized options passed to provider hooks
- `defaultCodecTransformer` for the default structured-output schema transformer

**Signature**

```ts
declare const make: (params: { readonly generateText: (options: ProviderOptions) => Effect.Effect<Array<Response.PartEncoded>, AiError.AiError, IdGenerator>; readonly streamText: (options: ProviderOptions) => Stream.Stream<Response.StreamPartEncoded, AiError.AiError, IdGenerator>; readonly codecTransformer?: CodecTransformer | undefined; }) => Effect.Effect<Service>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L748)

Since v4.0.0