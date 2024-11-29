# path

Creates a path argument.

Can optionally provide a custom argument name (defaults to `"path"`).

To import and use `path` from the "Args" module:

ts
import \* as Args from "@effect/cli/Args"
// Can be accessed like this
Args.path
undefined

**Signature**

```ts
export declare const path: (config?: Args.PathArgsConfig) => Args<string>
```
