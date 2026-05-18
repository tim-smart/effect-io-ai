Package: `effect`<br />
Module: `Queue`<br />

## Queue.Queue.OfferEntry

Represents a suspended offer waiting to be admitted to a bounded queue.

An entry is either a single message or a batch with an offset into its
remaining messages, plus a resume callback that completes the suspended
offer when the queue can accept more input.

**Signature**

```ts
type OfferEntry<A> = | {
      readonly _tag: "Array"
      readonly remaining: Array<A>
      offset: number
      readonly resume: (_: Effect<Array<A>>) => void
    }
    | {
      readonly _tag: "Single"
      readonly message: A
      readonly resume: (_: Effect<boolean>) => void
    }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L347)

Since v4.0.0