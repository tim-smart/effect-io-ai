Package: `effect`<br />
Module: `Param`<br />

## Param.withFallbackConfig

Adds a fallback config that is loaded when a required parameter is missing.

**Signature**

```ts
declare const withFallbackConfig: { <B>(config: Config.Config<B>): <Kind extends ParamKind, A>(self: Param<Kind, A>) => Param<Kind, A | B>; <Kind extends ParamKind, A, B>(self: Param<Kind, A>, config: Config.Config<B>): Param<Kind, A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1192)

Since v4.0.0