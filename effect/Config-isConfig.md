# isConfig

This function returns `true` if the specified value is an `Config` value,
`false` otherwise.

This function can be useful for checking the type of a value before
attempting to operate on it as an `Config` value. For example, you could
use `isConfig` to check the type of a value before using it as an
argument to a function that expects an `Config` value.

To import and use `isConfig` from the "Config" module:

```ts
import * as Config from "effect/Config"
// Can be accessed like this
Config.isConfig
```

**Signature**

```ts
export declare const isConfig: (u: unknown) => u is Config<unknown>
```
