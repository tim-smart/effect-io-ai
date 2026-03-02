Package: `effect`<br />
Module: `Queue`<br />

## Queue.Queue.State

Represents the internal state of a Queue.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L239)

Since v4.0.0