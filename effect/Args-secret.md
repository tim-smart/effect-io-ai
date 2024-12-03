# secret

Creates a text argument.

Can optionally provide a custom argument name (defaults to `"secret"`).

To import and use `secret` from the "Args" module:

```ts
import * as Args from "@effect/cli/Args"
// Can be accessed like this
Args.secret
```

**Signature**

```ts
export declare const secret: (config?: Args.BaseArgsConfig) => Args<Secret>
```
