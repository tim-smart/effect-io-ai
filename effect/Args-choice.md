# choice

Creates a choice argument.

Can optionally provide a custom argument name (defaults to `"choice"`).

To import and use `choice` from the "Args" module:

```ts
import * as Args from "@effect/cli/Args"
// Can be accessed like this
Args.choice
```

**Signature**

```ts
export declare const choice: <A>(
  choices: readonly [[string, A], ...[string, A][]],
  config?: Args.BaseArgsConfig
) => Args<A>
```
