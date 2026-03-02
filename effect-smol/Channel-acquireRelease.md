Package: `effect`<br />
Module: `Channel`<br />

## Channel.acquireRelease

Creates a `Channel` with resource management using acquire-release pattern.

**Example**

```ts
import { Channel, Effect } from "effect"

const channel = Channel.acquireRelease(
  Effect.succeed("resource"),
  (resource, exit) => Effect.log(`Released: ${resource}`)
)
```

**Signature**

```ts
declare const acquireRelease: { <Z>(release: (z: Z, e: Exit.Exit<unknown, unknown>) => Effect.Effect<unknown>): <E, R>(self: Effect.Effect<Z, E, R>) => Channel<Z, E, void, unknown, unknown, unknown, R>; <Z, E, R>(self: Effect.Effect<Z, E, R>, release: (z: Z, e: Exit.Exit<unknown, unknown>) => Effect.Effect<unknown>): Channel<Z, E, void, unknown, unknown, unknown, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L568)

Since v2.0.0