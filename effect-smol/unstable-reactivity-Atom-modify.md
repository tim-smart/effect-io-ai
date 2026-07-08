Package: `effect`<br />
Module: `Atom`<br />

## Atom.modify

Reads a writable atom, computes a return value and next write value, writes the
next value, and returns the computed result.

**Signature**

```ts
declare const modify: { <R, W, A>(f: (_: R) => [returnValue: A, nextValue: W]): (self: Writable<R, W>) => Effect.Effect<A, never, AtomRegistry>; <R, W, A>(self: Writable<R, W>, f: (_: R) => [returnValue: A, nextValue: W]): Effect.Effect<A, never, AtomRegistry>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2297)

Since v4.0.0