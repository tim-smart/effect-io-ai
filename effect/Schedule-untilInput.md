## untilInput

Returns a new schedule that stops execution when the given predicate on the
input evaluates to `true`.

**Details**

This function modifies an existing schedule so that it continues executing
only while the provided predicate returns `false` for incoming inputs. Once
an input satisfies the condition, the schedule terminates immediately.

**See**

- `untilInputEffect` If you need to use an effectful predicate.

**Signature**

```ts
declare const untilInput: { <In>(f: Predicate<In>): <Out, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>; <Out, In, R>(self: Schedule<Out, In, R>, f: Predicate<In>): Schedule<Out, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1927)

Since v2.0.0