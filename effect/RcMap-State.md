Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.State

Represents the internal state of an RcMap, which can be either Open (active)
or Closed (shutdown and no longer accepting operations).

**When to use**

Use when typing code that inspects an `RcMap`'s `state` field and narrows
between open and closed lifecycle states.

**See**

- `RcMap` for the map value that exposes this state
- `State.Open` for the active state with entries
- `State.Closed` for the shutdown state

**Signature**

```ts
type State<K, A, E> = State.Open<K, A, E> | State.Closed
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RcMap.ts#L99)

Since v4.0.0