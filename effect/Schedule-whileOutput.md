## whileOutput

Returns a new schedule that continues execution for as long as the given
predicate on the output evaluates to `true`.

**Details**

This function modifies an existing schedule so that it only continues
execution while a provided condition holds true for its output. If the
predicate returns `false`, the schedule stops.

**See**

- `whileOutputEffect` If you need to use an effectful predicate.

**Signature**

```ts
declare const whileOutput: { <Out>(f: Predicate<Out>): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>; <Out, In, R>(self: Schedule<Out, In, R>, f: Predicate<Out>): Schedule<Out, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L2083)

Since v2.0.0