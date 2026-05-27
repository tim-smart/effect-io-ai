Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.identity

Creates a schedule that always recurs, passing inputs directly as outputs.

**When to use**

Use when you need an infinite schedule that preserves input values as
outputs.

**Details**

This schedule runs indefinitely, returning each input value as its output
without modification. It effectively acts as a pass-through that simply
echoes its input values at each step.

**See**

- `forever` for an infinite schedule that returns incrementing step counts

**Signature**

```ts
declare const identity: <A>() => Schedule<A, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3428)

Since v2.0.0