Package: `effect`<br />
Module: `Channel`<br />

## Channel.acquireRelease

Acquires a resource, emits the acquired value as a single channel element,
and registers `release` in the channel scope.

**Details**

The release action runs when the channel scope closes and receives the scope
exit. If acquisition fails, no element is emitted and `release` is not
registered.

**Example** (Managing resources with acquire-release)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L667)

Since v4.0.0