Package: `effect`<br />
Module: `AtomRegistry`<br />

## AtomRegistry.make

Creates an `AtomRegistry`.

**Details**

Options can preload initial atom values, provide a custom task scheduler,
configure timeout bucket resolution, and set a default idle time-to-live for
unused atoms.

**Signature**

```ts
declare const make: (options?: { readonly initialValues?: Iterable<readonly [Atom.Atom<any>, any]> | undefined; readonly scheduleTask?: ((f: () => void) => () => void) | undefined; readonly timeoutResolution?: number | undefined; readonly defaultIdleTTL?: number | undefined; } | undefined) => AtomRegistry
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomRegistry.ts#L184)

Since v4.0.0