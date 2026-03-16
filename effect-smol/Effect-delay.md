Package: `effect`<br />
Module: `Effect`<br />

## Effect.delay

Returns an effect that is delayed from this effect by the specified
`Duration`.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.delay(
  Console.log("Delayed message"),
  "1 second"
)

Effect.runFork(program)
// Waits 1 second, then prints: "Delayed message"
```

**Signature**

```ts
declare const delay: { (duration: Duration.Input): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, duration: Duration.Input): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4554)

Since v2.0.0