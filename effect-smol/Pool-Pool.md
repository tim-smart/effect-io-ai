Package: `effect`<br />
Module: `Pool`<br />

## Pool.Pool

A `Pool<A, E>` is a pool of items of type `A`, each of which may be
associated with the acquisition and release of resources. An attempt to get
an item `A` from a pool may fail with an error of type `E`.

**Signature**

```ts
export interface Pool<in out A, in out E = never> extends Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly config: Config<A, E>
  readonly state: State<A, E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L31)

Since v2.0.0