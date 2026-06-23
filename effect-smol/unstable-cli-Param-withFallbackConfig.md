Package: `effect`<br />
Module: `Param`<br />

## Param.withFallbackConfig

Adds a fallback config that is loaded when a required parameter is missing.

**When to use**

Use when you need config to provide a fallback source for required flags or
arguments that are absent from CLI input.

**Details**

Provided CLI values win. Config is loaded only after a missing option or
missing argument error.

**Gotchas**

Missing config preserves the original missing-parameter error. Config parse
failure becomes `CliError.InvalidValue`.

**See**

- `withDefault` for a pure default value
- `withFallbackPrompt` for prompting interactively when input is missing

**Signature**

```ts
declare const withFallbackConfig: { <B>(config: Config.Config<B>): <Kind extends ParamKind, A>(self: Param<Kind, A>) => Param<Kind, A | B>; <Kind extends ParamKind, A, B>(self: Param<Kind, A>, config: Config.Config<B>): Param<Kind, A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1300)

Since v4.0.0