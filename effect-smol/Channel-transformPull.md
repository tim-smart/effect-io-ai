Package: `effect`<br />
Module: `Channel`<br />

## Channel.transformPull

Transforms a Channel by applying a function to its Pull implementation.

**Example**

```ts
import { Channel, Effect } from "effect"

// Transform a channel by modifying its pull behavior
const originalChannel = Channel.fromIterable([1, 2, 3])

const transformedChannel = Channel.transformPull(
  originalChannel,
  (pull, scope) =>
    Effect.succeed(
      Effect.map(pull, (value) => value * 2)
    )
)
// Outputs: 2, 4, 6
```

**Signature**

```ts
declare const transformPull: <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem2, OutErr2, OutDone2, Env2, OutErrX, EnvX>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (pull: Pull.Pull<OutElem, OutErr, OutDone>, scope: Scope.Scope) => Effect.Effect<Pull.Pull<OutElem2, OutErr2, OutDone2, Env2>, OutErrX, EnvX>) => Channel<OutElem2, Pull.ExcludeDone<OutErr2> | OutErrX, OutDone2, InElem, InErr, InDone, Env | Env2 | EnvX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L323)

Since v4.0.0