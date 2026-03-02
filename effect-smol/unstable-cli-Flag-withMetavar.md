Package: `effect`<br />
Module: `Flag`<br />

## Flag.withMetavar

Sets a custom metavar (placeholder name) for the flag in help documentation.

The metavar is displayed in usage text to indicate what value the user should provide.
For example, `--output FILE` shows `FILE` as the metavar.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

const databaseFlag = Flag.string("database-url").pipe(
  Flag.withMetavar("URL"),
  Flag.withDescription("Database connection URL")
)
// In help: --database-url URL

const timeoutFlag = Flag.integer("timeout").pipe(
  Flag.withMetavar("SECONDS")
)
// In help: --timeout SECONDS
```

**Signature**

```ts
declare const withMetavar: { <A>(metavar: string): (self: Flag<A>) => Flag<A>; <A>(self: Flag<A>, metavar: string): Flag<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L442)

Since v4.0.0