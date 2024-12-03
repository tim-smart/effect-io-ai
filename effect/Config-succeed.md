# succeed

Constructs a config which contains the specified value.

To import and use `succeed` from the "Config" module:

```ts
import * as Config from "effect/Config"
// Can be accessed like this
Config.succeed
```

**Signature**

```ts
export declare const succeed: <A>(value: A) => Config<A>
```
