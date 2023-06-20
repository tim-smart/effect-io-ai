# suspend

Lazily constructs a config.

To import and use `suspend` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.suspend
```

**Signature**

```ts
export declare const suspend: <A>(config: LazyArg<Config<A>>) => Config<A>
```
