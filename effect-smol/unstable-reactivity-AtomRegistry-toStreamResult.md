Package: `effect`<br />
Module: `AtomRegistry`<br />

## AtomRegistry.toStreamResult

Converts an `AsyncResult` atom in this registry into a stream of successful
values.

**Details**

Initial results are skipped, failures fail the stream with their cause, and
duplicate stream values are dropped with `Stream.changes`.

**Signature**

```ts
declare const toStreamResult: { <A, E>(atom: Atom.Atom<Result.AsyncResult<A, E>>): (self: AtomRegistry) => Stream.Stream<A, E>; <A, E>(self: AtomRegistry, atom: Atom.Atom<Result.AsyncResult<A, E>>): Stream.Stream<A, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomRegistry.ts#L290)

Since v4.0.0