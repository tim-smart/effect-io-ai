# secret

Constructs a config for a secret value.

To import and use `secret` from the "Config" module:

```ts
import * as Config from "effect/Config"
// Can be accessed like this
Config.secret
```

**Signature**

```ts
export declare const secret: (name?: string) => Config<Secret.Secret>
```
