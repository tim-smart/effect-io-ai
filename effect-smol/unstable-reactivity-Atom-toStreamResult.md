Package: `effect`<br />
Module: `Atom`<br />

## Atom.toStreamResult

Converts an `AsyncResult` atom into a stream using the `AtomRegistry` service.

**Details**

Initial results are skipped, successes are emitted as stream values, and
failures fail the stream with the result cause.

**Signature**

```ts
declare const toStreamResult: <A, E>(self: Atom<AsyncResult.AsyncResult<A, E>>) => Stream.Stream<A, E, AtomRegistry>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2278)

Since v4.0.0