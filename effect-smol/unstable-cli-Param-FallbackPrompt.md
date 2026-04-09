Package: `effect`<br />
Module: `Param`<br />

## Param.FallbackPrompt

Represents a fallback prompt that can either be provided directly or
computed effectfully when the parameter is missing.

**Signature**

```ts
type FallbackPrompt<A> = | Prompt.Prompt<A>
  | Effect.Effect<Prompt.Prompt<A>, CliError.CliError, Environment>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L149)

Since v4.0.0