Package: `effect`<br />
Module: `Flag`<br />

## Flag.withHidden

Hides a flag from generated help output and shell completions while keeping
it fully parseable on the command line.

**When to use**

Use when experimental or internal flags should be accepted but not advertised, such as
`--experimental-foo`, debug toggles, or escape hatches that are not yet committed to the
public CLI surface.

**Example** (Hiding a flag from help)

```ts
import { Flag } from "effect/unstable/cli"

// Flag still parses --experimental-foo, but it does not appear in --help.
const experimental = Flag.boolean("experimental-foo").pipe(
  Flag.withHidden
)
```

**Signature**

```ts
declare const withHidden: <A>(self: Flag<A>) => Flag<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Flag.ts#L529)

Since v4.0.0