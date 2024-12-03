# date

Creates a date argument.

Can optionally provide a custom argument name (defaults to `"date"`).

To import and use `date` from the "Args" module:

```ts
import * as Args from "@effect/cli/Args"
// Can be accessed like this
Args.date
```

**Signature**

```ts
export declare const date: (config?: Args.BaseArgsConfig) => Args<globalThis.Date>
```
