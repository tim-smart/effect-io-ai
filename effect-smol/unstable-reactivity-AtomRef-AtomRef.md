Package: `effect`<br />
Module: `AtomRef`<br />

## AtomRef.AtomRef

A mutable reactive reference.

It supports replacing the whole value, updating it from the current value, and
creating mutable references to nested properties.

**Signature**

```ts
export interface AtomRef<A> extends ReadonlyRef<A> {
  readonly prop: <K extends keyof A>(prop: K) => AtomRef<A[K]>
  readonly set: (value: A) => AtomRef<A>
  readonly update: (f: (value: A) => A) => AtomRef<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomRef.ts#L67)

Since v4.0.0