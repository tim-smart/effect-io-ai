Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromTransform

Creates a `Channel` from a transformation function that operates on upstream pulls.

**Example**

```ts
import { Channel, Effect } from "effect"

const channel = Channel.fromTransform((upstream, scope) =>
  Effect.succeed(upstream)
)
```

**Signature**

```ts
declare const fromTransform: <OutElem, OutErr, OutDone, InElem, InErr, InDone, EX, EnvX, Env>(transform: (upstream: Pull.Pull<InElem, InErr, InDone>, scope: Scope.Scope) => Effect.Effect<Pull.Pull<OutElem, OutErr, OutDone, EnvX>, EX, Env>) => Channel<OutElem, Pull.ExcludeDone<OutErr> | EX, OutDone, InElem, InErr, InDone, Env | EnvX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L280)

Since v4.0.0