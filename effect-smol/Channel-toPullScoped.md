Package: `effect`<br />
Module: `Channel`<br />

## Channel.toPullScoped

Converts a channel to a Pull within an existing scope.

**Example**

```ts
import { Channel, Data, Effect, Scope } from "effect"

class ScopedPullError extends Data.TaggedError("ScopedPullError")<{
  readonly reason: string
}> {}

// Create a channel
const numbersChannel = Channel.fromIterable([1, 2, 3])

// Convert to Pull with explicit scope
const scopedPullEffect = Effect.gen(function*() {
  const scope = yield* Scope.make()
  const pull = yield* Channel.toPullScoped(numbersChannel, scope)
  return pull
})
```

**Signature**

```ts
declare const toPullScoped: <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>, scope: Scope.Scope) => Effect.Effect<Pull.Pull<OutElem, OutErr, OutDone, Env>, never, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7405)

Since v4.0.0