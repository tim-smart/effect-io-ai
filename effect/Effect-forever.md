## forever

Repeats an effect indefinitely until an error occurs.

**Details**

This function executes an effect repeatedly in an infinite loop. Each
iteration is executed sequentially, and the loop continues until the first
error occurs. If the effect succeeds, it starts over from the beginning. If
the effect fails, the error is propagated, and the loop stops.

Be cautious when using this function, as it will run indefinitely unless an
error interrupts it. This makes it suitable for long-running processes or
continuous polling tasks, but you should ensure proper error handling or
combine it with other operators like `timeout` or `schedule` to prevent
unintentional infinite loops.

**Signature**

```ts
declare const forever: <A, E, R>(self: Effect<A, E, R>) => Effect<never, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9684)

Since v2.0.0