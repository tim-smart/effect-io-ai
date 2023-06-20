# table

Constructs a config for a sequence of values.

To import and use `table` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.table
```

**Signature**

```ts
export declare const table: <A>(config: Config<A>, name?: string | undefined) => Config<HashMap.HashMap<string, A>>
```
