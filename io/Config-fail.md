# fail

Constructs a config that fails with the specified message.

To import and use `fail` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.fail
```

**Signature**

```ts
export declare const fail: (message: string) => Config<never>
```
