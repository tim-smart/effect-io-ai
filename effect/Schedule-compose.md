## compose

Chains two schedules, passing the output of the first as the input to the
second, while selecting the shorter delay between them.

**Details**

This function composes two schedules so that the output of the first schedule
becomes the input of the second schedule. The first schedule executes first,
and once it produces a result, the second schedule receives that result and
continues execution based on it.

This is useful for building complex scheduling workflows where one schedule's
behavior determines how the next schedule behaves.

**Signature**

```ts
declare const compose: { <Out2, Out, R2>(that: Schedule<Out2, Out, R2>): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out2, In, R2 | R>; <Out, In, R, Out2, R2>(self: Schedule<Out, In, R>, that: Schedule<Out2, Out, R2>): Schedule<Out2, In, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L528)

Since v2.0.0