Package: `effect`<br />
Module: `Config`<br />

## Config.mapOrFail

Returns a new config whose structure is the samea as this one, but which
may produce a different value, constructed using the specified fallible
function.

**Signature**

```ts
declare const mapOrFail: { <A, B>(f: (a: A) => Either.Either<B, ConfigError.ConfigError>): (self: Config<A>) => Config<B>; <A, B>(self: Config<A>, f: (a: A) => Either.Either<B, ConfigError.ConfigError>): Config<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L269)

Since v2.0.0