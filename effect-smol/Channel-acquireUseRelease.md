Package: `effect`<br />
Module: `Channel`<br />

## Channel.acquireUseRelease

Creates a `Channel` with resource management using acquire-use-release pattern.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L544)

Since v2.0.0