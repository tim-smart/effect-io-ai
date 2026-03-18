Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromPull

Creates a `Channel` from an `Effect` that produces a `Pull`.

**Example**

```ts
import { Channel, Effect } from "effect"

const channel = Channel.fromPull(
  Effect.succeed(Effect.succeed(42))
)
```

**Signature**

```ts
declare const fromPull: <OutElem, OutErr, OutDone, EX, EnvX, Env>(effect: Effect.Effect<Pull.Pull<OutElem, OutErr, OutDone, EnvX>, EX, Env>) => Channel<OutElem, Pull.ExcludeDone<OutErr> | EX, OutDone, unknown, unknown, unknown, Env | EnvX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L368)

Since v4.0.0