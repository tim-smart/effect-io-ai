# arrayOf

Constructs a config for an array of values.

To import and use `arrayOf` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.arrayOf
```

**Signature**

```ts
export declare const arrayOf: <A>(config: Config<A>, name?: string | undefined) => Config<readonly A[]>
```
