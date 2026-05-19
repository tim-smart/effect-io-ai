Package: `effect`<br />
Module: `Atom`<br />

## Atom.update

Updates a writable atom by reading its current value from the registry and
writing the value returned by the update function.

**Signature**

```ts
declare const update: { <R, W>(f: (_: R) => W): (self: Writable<R, W>) => Effect.Effect<void, never, AtomRegistry>; <R, W>(self: Writable<R, W>, f: (_: R) => W): Effect.Effect<void, never, AtomRegistry>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2285)

Since v4.0.0