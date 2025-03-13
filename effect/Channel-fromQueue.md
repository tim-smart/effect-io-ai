Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromQueue

Construct a `Channel` from a `Queue`.

**Signature**

```ts
declare const fromQueue: <Done, Err, Elem>(queue: Queue.Dequeue<Either.Either<Elem, Exit.Exit<Done, Err>>>) => Channel<Elem, unknown, Err, unknown, Done, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1143)

Since v2.0.0