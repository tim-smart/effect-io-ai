Package: `effect`<br />
Module: `Atom`<br />

## Atom.batch

Runs synchronous atom updates as a batch.

**Details**

Stale nodes are rebuilt and listeners are notified after the callback completes,
so dependent updates observe the final batched state.

**Signature**

```ts
declare const batch: (f: () => void) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2034)

Since v4.0.0