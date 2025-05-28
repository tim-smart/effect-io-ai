Package: `effect`<br />
Module: `Config`<br />

## Config.orElseIf

Returns configuration which reads from this configuration, but which falls
back to the specified configuration if reading from this configuration
fails with an error satisfying the specified predicate.

**Signature**

```ts
declare const orElseIf: { <A2>(options: { readonly if: Predicate<ConfigError.ConfigError>; readonly orElse: LazyArg<Config<A2>>; }): <A>(self: Config<A>) => Config<A>; <A, A2>(self: Config<A>, options: { readonly if: Predicate<ConfigError.ConfigError>; readonly orElse: LazyArg<Config<A2>>; }): Config<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L307)

Since v2.0.0