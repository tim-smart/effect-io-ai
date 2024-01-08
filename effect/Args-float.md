# float

Creates a floating point number argument.

Can optionally provide a custom argument name (defaults to `"float"`).

To import and use `float` from the "Args" module:

```ts
import * as Args from "@effect/cli/Args"
// Can be accessed like this
Args.float
```

**Signature**

```ts
export declare const float: (config?: Args.BaseArgsConfig) => Args<number>
```
