# setOf

Constructs a config for a sequence of values.

To import and use `setOf` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.setOf
```

**Signature**

```ts
export declare const setOf: <A>(config: Config<A>, name?: string | undefined) => Config<HashSet.HashSet<A>>
```
