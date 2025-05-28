Package: `effect`<br />
Module: `Config`<br />

## Config.primitive

Constructs a new primitive config.

**Signature**

```ts
declare const primitive: <A>(description: string, parse: (text: string) => Either.Either<A, ConfigError.ConfigError>) => Config<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L338)

Since v2.0.0