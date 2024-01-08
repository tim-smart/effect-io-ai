# integer

Creates an integer argument.

Can optionally provide a custom argument name (defaults to `"integer"`).

To import and use `integer` from the "Args" module:

```ts
import * as Args from "@effect/cli/Args"
// Can be accessed like this
Args.integer
```

**Signature**

```ts
export declare const integer: (config?: Args.BaseArgsConfig) => Args<number>
```
