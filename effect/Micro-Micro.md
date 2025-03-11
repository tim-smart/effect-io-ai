## Micro

A lightweight alternative to the `Effect` data type, with a subset of the functionality.

**Signature**

```ts
export interface Micro<out A, out E = never, out R = never> extends Effect<A, E, R> {
  readonly [TypeId]: Micro.Variance<A, E, R>
  [Symbol.iterator](): MicroIterator<Micro<A, E, R>>
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: MicroUnify<this>
  [Unify.ignoreSymbol]?: MicroUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L72)

Since v3.4.0