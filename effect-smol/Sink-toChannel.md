Package: `effect`<br />
Module: `Sink`<br />

## Sink.toChannel

Creates a `Channel` from a Sink.

**Example**

```ts
import { Sink } from "effect"

// Create a sink and extract its channel
const sink = Sink.succeed(42)
const channel = Sink.toChannel(sink)
```

**Signature**

```ts
declare const toChannel: <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Channel.Channel<never, E, End<A, L>, NonEmptyReadonlyArray<In>, never, void, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L280)

Since v2.0.0