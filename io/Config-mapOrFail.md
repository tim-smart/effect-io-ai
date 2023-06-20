# mapOrFail

Returns a new config whose structure is the samea as this one, but which
may produce a different value, constructed using the specified fallible
function.

To import and use `mapOrFail` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.mapOrFail
```

**Signature**

```ts
export declare const mapOrFail: {
  <A, B>(f: (a: A) => Either.Either<ConfigError.ConfigError, B>): (self: Config<A>) => Config<B>
  <A, B>(self: Config<A>, f: (a: A) => Either.Either<ConfigError.ConfigError, B>): Config<B>
}
```
