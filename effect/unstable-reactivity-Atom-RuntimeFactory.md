Package: `effect`<br />
Module: `Atom`<br />

## Atom.RuntimeFactory

Factory for `AtomRuntime` values that share a `Layer.MemoMap` and a set of global layers.

**Signature**

```ts
export interface RuntimeFactory {
  <R, E>(
    create:
      | Layer.Layer<R, E, AtomRegistry | Reactivity.Reactivity>
      | ((get: AtomContext) => Layer.Layer<R, E, AtomRegistry | Reactivity.Reactivity>)
  ): AtomRuntime<R, E>
  readonly memoMap: Layer.MemoMap
  readonly addGlobalLayer: <A, E>(layer: Layer.Layer<A, E, AtomRegistry | Reactivity.Reactivity>) => void

  /**
   * Uses the `Reactivity` service from the runtime to refresh the atom whenever
   * the keys change.
   */
  readonly withReactivity: (
    keys: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>>
  ) => <A extends Atom<any>>(atom: A) => A
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Atom.ts#L700)

Since v4.0.0