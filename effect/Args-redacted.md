# redacted

Creates a text argument.

Can optionally provide a custom argument name (defaults to `"redacted"`).

To import and use `redacted` from the "Args" module:

ts
import \* as Args from "@effect/cli/Args"
// Can be accessed like this
Args.redacted
undefined

**Signature**

```ts
export declare const redacted: (config?: Args.BaseArgsConfig) => Args<Redacted>
```
