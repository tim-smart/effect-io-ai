Package: `effect`<br />
Module: `AtomRegistry`<br />

## AtomRegistry.toStream

Converts an atom in this registry into a stream.

**Details**

The stream emits the current value immediately, emits subsequent changes, and
unsubscribes from the registry when the stream scope closes.

**Signature**

```ts
declare const toStream: { <A>(atom: Atom.Atom<A>): (self: AtomRegistry) => Stream.Stream<A>; <A>(self: AtomRegistry, atom: Atom.Atom<A>): Stream.Stream<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomRegistry.ts#L265)

Since v4.0.0