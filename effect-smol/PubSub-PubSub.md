Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.PubSub

A `PubSub<A>` is an asynchronous message hub into which publishers can publish
messages of type `A` and subscribers can subscribe to take messages of type
`A`.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  // Create a bounded PubSub with capacity 10
  const pubsub = yield* PubSub.bounded<string>(10)

  // Publish messages
  yield* PubSub.publish(pubsub, "Hello")
  yield* PubSub.publish(pubsub, "World")

  // Subscribe and consume messages
  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)
    const message1 = yield* PubSub.take(subscription)
    const message2 = yield* PubSub.take(subscription)
    console.log(message1, message2) // "Hello", "World"
  }))
})
```

**Signature**

```ts
export interface PubSub<in out A> extends Pipeable {
  readonly [TypeId]: {
    readonly _A: Invariant<A>
  }
  readonly pubsub: PubSub.Atomic<A>
  readonly subscribers: PubSub.Subscribers<A>
  readonly scope: Scope.Closeable
  readonly shutdownHook: Latch.Latch
  readonly shutdownFlag: MutableRef.MutableRef<boolean>
  readonly strategy: PubSub.Strategy<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L78)

Since v2.0.0