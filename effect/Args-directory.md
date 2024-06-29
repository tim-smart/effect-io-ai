# directory

Creates a directory argument.

Can optionally provide a custom argument name (defaults to `"directory"`).

To import and use `directory` from the "Args" module:

```ts
import * as Args from "@effect/cli/Args"
// Can be accessed like this
Args.directory
```

**Signature**

```ts
export declare const directory: (config?: Args.PathArgsConfig) => Args<string>
```
