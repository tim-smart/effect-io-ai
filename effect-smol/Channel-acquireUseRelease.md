Package: `effect`<br />
Module: `Channel`<br />

## Channel.acquireUseRelease

Acquires a resource, uses it to build a `Channel`, and guarantees that
`release` runs with the channel's `Exit` when the channel completes, fails,
or is interrupted.

**Details**

Acquisition is uninterruptible. If acquisition fails, `use` is not run and
`release` is not registered.

**Example** (Managing resources with acquire-use-release)

```ts
import { Channel, Effect } from "effect"

const channel = Channel.acquireUseRelease(
  Effect.succeed("resource"),
  (resource) => Channel.succeed(resource.toUpperCase()),
  (resource, exit) => Effect.log(`Released: ${resource}`)
)
```

**Signature**

```ts
declare const acquireUseRelease: <A, E, R, OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(acquire: Effect.Effect<A, E, R>, use: (a: A) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, release: (a: A, exit: Exit.Exit<OutDone, OutErr>) => Effect.Effect<unknown>) => Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L625)

Since v2.0.0