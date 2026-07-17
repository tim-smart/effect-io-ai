Package: `effect`<br />
Module: `AtomRef`<br />

## AtomRef.collection

Creates a reactive collection from an iterable of initial item values.

**Details**

Each item is wrapped in an `AtomRef`, and changes to item refs notify the
collection subscribers.

**Signature**

```ts
declare const collection: <A>(items: Iterable<A>) => Collection<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/AtomRef.ts#L105)

Since v4.0.0