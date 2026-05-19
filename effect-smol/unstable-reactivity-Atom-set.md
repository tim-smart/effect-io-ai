Package: `effect`<br />
Module: `Atom`<br />

## Atom.set

Writes a value to a writable atom through the `AtomRegistry` service.

**Signature**

```ts
declare const set: { <W>(value: W): <R>(self: Writable<R, W>) => Effect.Effect<void, never, AtomRegistry>; <R, W>(self: Writable<R, W>, value: W): Effect.Effect<void, never, AtomRegistry>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2269)

Since v4.0.0