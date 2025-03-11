## resetWhen

Resets the schedule when the specified predicate on the schedule output
evaluates to `true`.

**Details**

This function modifies a schedule so that it resets to its initial state
whenever the provided predicate `f` returns `true` for an output value.

**See**

- `resetAfter` If you need to reset based on inactivity.

**Signature**

```ts
declare const resetWhen: { <Out>(f: Predicate<Out>): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>; <Out, In, R>(self: Schedule<Out, In, R>, f: Predicate<Out>): Schedule<Out, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1712)

Since v2.0.0