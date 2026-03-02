Package: `effect`<br />
Module: `Queue`<br />

## Queue.Queue.OfferEntry

Represents an entry in the queue's offer buffer.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L264)

Since v4.0.0