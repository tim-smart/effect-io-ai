Package: `effect`<br />
Module: `Micro`<br />

## Micro.repeatExit

Repeat the given `Micro` using the provided options.

The `while` predicate will be checked after each iteration, and can use the
fall `MicroExit` of the effect to determine if the repetition should continue.

**Signature**

```ts
declare const repeatExit: { <A, E>(options: { while: Predicate<MicroExit<A, E>>; times?: number | undefined; schedule?: MicroSchedule | undefined; }): <R>(self: Micro<A, E, R>) => Micro<A, E, R>; <A, E, R>(self: Micro<A, E, R>, options: { while: Predicate<MicroExit<A, E>>; times?: number | undefined; schedule?: MicroSchedule | undefined; }): Micro<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2270)

Since v3.4.6