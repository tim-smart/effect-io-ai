Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.State

Represents the internal state of an RcMap, which can be either Open (active)
or Closed (shutdown and no longer accepting operations).

**Signature**

```ts
type State<K, A, E> = State.Open<K, A, E> | State.Closed
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L89)

Since v4.0.0