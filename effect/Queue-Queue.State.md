Package: `effect`<br />
Module: `Queue`<br />

## Queue.Queue.State

Tagged state of a `Queue`.

**Details**

`Open` queues can accept offers and takers, `Closing` queues are
completing with a stored failure exit, and `Done` queues have finished.
This is low-level metadata exposed by the queue model; most users should
inspect queues through the public operations.

**Signature**

```ts
type State<A, E> = | {
      readonly _tag: "Open"
      readonly takers: Set<(_: Effect<void, E>) => void>
      readonly offers: Set<OfferEntry<A>>
      readonly awaiters: Set<(_: Effect<void, E>) => void>
    }
    | {
      readonly _tag: "Closing"
      readonly takers: Set<(_: Effect<void, E>) => void>
      readonly offers: Set<OfferEntry<A>>
      readonly awaiters: Set<(_: Effect<void, E>) => void>
      readonly exit: Failure<never, E>
    }
    | {
      readonly _tag: "Done"
      readonly exit: Failure<never, E>
    }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L336)

Since v4.0.0