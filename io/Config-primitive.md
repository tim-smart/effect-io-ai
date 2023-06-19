# primitive

Constructs a new primitive config.

Part of the `Config` module, imported from `@effect/io/Config`.

**Signature**

```ts
export declare const primitive: <A>(
  description: string,
  parse: (text: string) => Either.Either<ConfigError.ConfigError, A>
) => Config<A>
```
