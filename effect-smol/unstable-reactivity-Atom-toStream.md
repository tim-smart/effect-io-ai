Package: `effect`<br />
Module: `Atom`<br />

## Atom.toStream

Converts an atom into a stream using the `AtomRegistry` service.

**Details**

The stream emits the atom's current value immediately and then emits subsequent
changes until the stream scope is closed.

**Signature**

```ts
declare const toStream: <A>(self: Atom<A>) => Stream.Stream<A, never, AtomRegistry>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2256)

Since v4.0.0