Package: `effect`<br />
Module: `Flag`<br />

## Flag.withDescription

Adds a description to a flag for help documentation.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

const portFlag = Flag.integer("port").pipe(
  Flag.withDescription("The port number to listen on")
)

const configFlag = Flag.file("config").pipe(
  Flag.withDescription("Path to the configuration file")
)
```

**Signature**

```ts
declare const withDescription: { <A>(description: string): (self: Flag<A>) => Flag<A>; <A>(self: Flag<A>, description: string): Flag<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L408)

Since v4.0.0