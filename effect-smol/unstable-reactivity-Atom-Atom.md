Package: `effect`<br />
Module: `Atom`<br />

## Atom.Atom

Reactive value read by an `AtomRegistry`, with metadata controlling caching, laziness, refresh behavior, and initial value targeting.

**Signature**

```ts
export interface Atom<A> extends Pipeable, Inspectable.Inspectable {
  readonly [TypeId]: TypeId
  readonly keepAlive: boolean
  readonly lazy: boolean
  readonly read: (get: AtomContext) => A
  readonly refresh?: (f: <A>(atom: Atom<A>) => void) => void
  readonly label?: readonly [name: string, stack: string]
  readonly idleTTL?: number
  readonly initialValueTarget?: Atom<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L80)

Since v4.0.0